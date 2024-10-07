import 'package:chat_app/core/models/room_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_event.dart';
part 'room_state.dart';
part 'room_bloc.freezed.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  RoomBloc() : super(const RoomState.initial()) {
    on<LoadRoomsEvent>(_onLoadRooms);
    on<CreateRoomEvent>(_onCreateRoom);
    on<JoinRoomEvent>(_onJoinRoom);
  }

  Future<void> _onLoadRooms(
      LoadRoomsEvent event, Emitter<RoomState> emit) async {
    emit(const RoomState.loading());
    try {
      final roomsStream = _firestore.collection('rooms').snapshots();
      await emit.forEach(
        roomsStream,
        onData: (QuerySnapshot snapshot) {
          final rooms = snapshot.docs.map((doc) {
            final data = doc.data() as Map<String, dynamic>;
            return RoomModel(
              id: doc.id,
              name: data['name'] as String,
              createdAt: (data['createdAt'] as Timestamp).toDate(),
              members: List.from(data['members'] as List),
            );
          }).toList();
          return RoomState.loaded(rooms);
        },
      );
    } catch (e) {
      emit(RoomState.error(e.toString()));
    }
  }

  Future<void> _onCreateRoom(
      CreateRoomEvent event, Emitter<RoomState> emit) async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        await _firestore.collection('rooms').add({
          'name': event.name,
          'members': [user.uid],
          'createdAt': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      emit(RoomState.error(e.toString()));
    }
  }

  Future<void> _onJoinRoom(JoinRoomEvent event, Emitter<RoomState> emit) async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        final roomRef = _firestore.collection('rooms').doc(event.roomId);
        await _firestore.runTransaction((transaction) async {
          final roomDoc = await transaction.get(roomRef);
          if (!roomDoc.exists) {
            throw Exception('Room does not exist');
          }

          final currentMembers = List<String>.from(roomDoc.get('members'));
          if (!currentMembers.contains(user.uid)) {
            currentMembers.add(user.uid);
            transaction.update(roomRef, {'members': currentMembers});
          }
        });
      }
    } catch (e) {
      emit(RoomState.error(e.toString()));
    }
  }
}
