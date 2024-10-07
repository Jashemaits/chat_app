import 'dart:async';

import 'package:chat_app/core/models/call_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:uuid/uuid.dart';

part 'call_event.dart';
part 'call_state.dart';
part 'call_bloc.freezed.dart';

class CallBloc extends Bloc<CallEvent, CallState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  StreamSubscription? _callSubscription;
  StreamSubscription? _roomSubscription;

  CallBloc() : super(CallState.initial()) {
    on<StartCall>(_onStartCall);
    on<ReceiveCall>(_onReceiveCall);
    on<AcceptCall>(_onAcceptCall);
    on<RejectCall>(_onRejectCall);
    on<EndCall>(_onEndCall);
    on<UpdateCallStatus>(_onUpdateCallStatus);

    _setupCallListeners();
  }

  void _setupCallListeners() {
    final userId = _auth.currentUser?.uid;
    if (userId == null) return;

    // Listen for changes in rooms to detect incoming calls
    _roomSubscription =
        _firestore.collection('rooms').snapshots().listen((snapshot) {
      for (var change in snapshot.docChanges) {
        if (change.type == DocumentChangeType.modified) {
          final roomData = change.doc.data()!;
          if (roomData.containsKey('activeCall')) {
            final call = CallModel.fromJson(roomData['activeCall']);
            if (call.receiverId == userId &&
                call.status == CallStatus.calling) {
              add(ReceiveCall(incomingCall: call));
            }
          }
        }
      }
    });
  }

  Future<void> _onStartCall(StartCall event, Emitter<CallState> emit) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) throw Exception('User not authenticated');

      // Create a new call
      final call = CallModel(
        callId: const Uuid().v4(),
        callerId: currentUser.uid,
        callerName: currentUser.email ?? 'Unknown User',
        receiverId: event.receiverId,
        receiverName: event.receiverName,
        type: event.type,
        roomId: event.roomId,
        status: CallStatus.calling,
        startTime: DateTime.now(),
      );

      // Initialize WebRTC
      final localStream = await _createLocalStream(event.type);
      final peerConnection = await _createPeerConnection();

      // Add tracks to peer connection
      localStream.getTracks().forEach((track) {
        peerConnection.addTrack(track, localStream);
      });

      // Create offer
      final offer = await peerConnection.createOffer();
      await peerConnection.setLocalDescription(offer);

      // Update room with active call and offer
      await _firestore.collection('rooms').doc(event.roomId).update({
        'activeCall': {
          ...call.toJson(),
          'offer': offer.sdp,
        },
      });

      emit(state.copyWith(
        currentCall: call,
        localStream: localStream,
        peerConnection: peerConnection,
      ));

      _setupPeerConnectionListeners(peerConnection, emit);
      _listenForAnswer(event.roomId, peerConnection);
      _listenForIceCandidates(event.roomId, peerConnection);
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
      add(EndCall(roomId: event.roomId));
    }
  }

  Future<void> _onReceiveCall(
      ReceiveCall event, Emitter<CallState> emit) async {
    emit(state.copyWith(currentCall: event.incomingCall));
  }

  Future<void> _onAcceptCall(AcceptCall event, Emitter<CallState> emit) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) throw Exception('User not authenticated');

      final call = event.activeCall;

      // Get the offer from the room
      final roomDoc =
          await _firestore.collection('rooms').doc(event.roomId).get();
      final offerSdp = roomDoc.data()?['activeCall']['offer'] as String?;
      if (offerSdp == null) throw Exception('No offer found');

      // Initialize WebRTC
      final localStream = await _createLocalStream(call.type);
      final peerConnection = await _createPeerConnection();

      localStream.getTracks().forEach((track) {
        peerConnection.addTrack(track, localStream);
      });

      // Set remote description (offer)
      await peerConnection.setRemoteDescription(
        RTCSessionDescription(offerSdp, 'offer'),
      );

      // Create answer
      final answer = await peerConnection.createAnswer();
      await peerConnection.setLocalDescription(answer);

      // Update room with answer and status
      await _firestore.collection('rooms').doc(event.roomId).update({
        'activeCall.status': CallStatus.connected.toString(),
        'activeCall.answer': answer.sdp,
      });

      emit(state.copyWith(
        currentCall: call.copyWith(status: CallStatus.connected),
        localStream: localStream,
        peerConnection: peerConnection,
      ));

      _setupPeerConnectionListeners(peerConnection, emit);
      _listenForIceCandidates(event.roomId, peerConnection);
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
      add(EndCall(roomId: event.roomId));
    }
  }

  Future<void> _onRejectCall(RejectCall event, Emitter<CallState> emit) async {
    try {
      await _firestore.collection('rooms').doc(event.roomId).update({
        'activeCall.status': CallStatus.ended.toString(),
        'activeCall.endTime': DateTime.now().toIso8601String(),
      });
      _cleanupCallResources();
      emit(CallState.initial());
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  Future<void> _onEndCall(EndCall event, Emitter<CallState> emit) async {
    try {
      if (state.currentCall != null) {
        await _firestore.collection('rooms').doc(event.roomId).update({
          'activeCall.status': CallStatus.ended.toString(),
          'activeCall.endTime': DateTime.now().toIso8601String(),
        });
      }
      _cleanupCallResources();
      emit(CallState.initial());
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  void _onUpdateCallStatus(UpdateCallStatus event, Emitter<CallState> emit) {
    final call = state.currentCall;
    if (call != null) {
      emit(state.copyWith(
        currentCall: call.copyWith(status: event.status),
      ));
    }
  }

  Future<MediaStream> _createLocalStream(CallType type) async {
    final Map<String, dynamic> mediaConstraints = {
      'audio': true,
      'video': type == CallType.video,
    };
    return await navigator.mediaDevices.getUserMedia(mediaConstraints);
  }

  Future<RTCPeerConnection> _createPeerConnection() async {
    final configuration = {
      'iceServers': [
        {
          'urls': [
            'stun:stun1.l.google.com:19302',
            'stun:stun2.l.google.com:19302',
          ],
        },
      ],
    };
    return await createPeerConnection(configuration);
  }

  void _setupPeerConnectionListeners(
      RTCPeerConnection peerConnection, Emitter<CallState> emit) {
    peerConnection.onIceCandidate = (RTCIceCandidate candidate) {
      final call = state.currentCall;
      if (call != null) {
        _firestore
            .collection('rooms')
            .doc(state.currentCall!.roomId)
            .collection('candidates')
            .add(candidate.toMap());
      }
    };

    peerConnection.onTrack = (RTCTrackEvent event) {
      emit(state.copyWith(remoteStream: event.streams[0]));
    };
  }

  void _listenForAnswer(String roomId, RTCPeerConnection peerConnection) {
    _firestore
        .collection('rooms')
        .doc(roomId)
        .snapshots()
        .listen((snapshot) async {
      final data = snapshot.data();
      if (data != null && data.containsKey('activeCall')) {
        final answerSdp = data['activeCall']['answer'] as String?;
        if (answerSdp != null) {
          await peerConnection.setRemoteDescription(
            RTCSessionDescription(answerSdp, 'answer'),
          );
        }
      }
    });
  }

  void _listenForIceCandidates(
      String roomId, RTCPeerConnection peerConnection) {
    _firestore
        .collection('rooms')
        .doc(roomId)
        .collection('candidates')
        .snapshots()
        .listen((snapshot) {
      for (var change in snapshot.docChanges) {
        if (change.type == DocumentChangeType.added) {
          final candidate = RTCIceCandidate(
            change.doc.data()!['candidate'],
            change.doc.data()!['sdpMid'],
            change.doc.data()!['sdpMLineIndex'],
          );
          peerConnection.addCandidate(candidate);
        }
      }
    });
  }

  void _cleanupCallResources() {
    state.localStream?.dispose();
    state.peerConnection?.dispose();
  }

  @override
  Future<void> close() {
    _callSubscription?.cancel();
    _roomSubscription?.cancel();
    _cleanupCallResources();
    return super.close();
  }
}
