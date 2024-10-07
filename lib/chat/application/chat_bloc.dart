import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:chat_app/core/models/message_model.dart';
import 'package:chat_app/core/models/room_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  StreamSubscription<QuerySnapshot>? _messagesSubscription;

  ChatBloc() : super(const ChatState.initial()) {
    on<LoadMessages>(_onLoadMessages);
    on<SendMessage>(_onSendMessage);
    on<MessagesReceived>(_onMessagesReceived);
  }

  Future<void> _onLoadMessages(
      LoadMessages event, Emitter<ChatState> emit) async {
    emit(const ChatState.loading());
    try {
      // Listen to messages
      final messagesQuery = _firestore
          .collection('rooms')
          .doc(event.roomId)
          .collection('messages')
          .orderBy('timestamp', descending: true);

      await _messagesSubscription?.cancel();
      _messagesSubscription = messagesQuery.snapshots().listen(
        (snapshot) {
          final messages = snapshot.docs.map((doc) {
            final data = doc.data();
            return MessageModel.fromJson({
              ...data,
              'id': doc.id,
              'timestamp': data['timestamp'] as Timestamp,
            });
          }).toList();

          add(ChatEvent.messagesReceived(messages: messages));
        },
        onError: (error, st) {
          log(st.toString());
          add(ChatEvent.messagesReceived(messages: []));
          emit(ChatState.error(message: error.toString()));
        },
      );

      emit(ChatState.loaded(messages: []));
    } catch (e, st) {
      log(st.toString());
      emit(ChatState.error(message: e.toString()));
    }
  }

  void _onMessagesReceived(MessagesReceived event, Emitter<ChatState> emit) {
    state.maybeWhen(
      loaded: (_) {
        emit(ChatState.loaded(
          messages: event.messages,
        ));
      },
      orElse: () {},
    );
  }

  Future<void> _onSendMessage(
      SendMessage event, Emitter<ChatState> emit) async {
    try {
      final user = _auth.currentUser;
      if (user == null) throw Exception('User not authenticated');

      // Verify user is a member of the room
      log(event.roomId);
      final roomDoc =
          (await _firestore.collection('rooms').doc(event.roomId).get()).data()
              as Map<String, dynamic>;
      log(roomDoc.toString());
      final room = RoomModel.fromJson({
        ...roomDoc,
        'id': event.roomId,
        'createdAt': roomDoc['createdAt'] as Timestamp,
      });

      if (!room.members.contains(user.uid)) {
        throw Exception('You must be a member of this room to send messages');
      }

      await _firestore
          .collection('rooms')
          .doc(event.roomId)
          .collection('messages')
          .add({
        'text': event.message,
        'senderId': user.uid,
        'senderName': user.email ?? 'Unknown User',
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
      emit(ChatState.error(message: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _messagesSubscription?.cancel();
    return super.close();
  }
}
