import 'package:chat_app/core/models/room_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_event.dart';
part 'room_state.dart';
part 'room_bloc.freezed.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  RoomBloc() : super(const RoomState.initial()) {
    on<LoadRoomsEvent>(_onLoadRooms);
    on<CreateRoomEvent>(_onCreateRoom);
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
      await _firestore.collection('rooms').add({
        'name': event.name,
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      emit(RoomState.error(e.toString()));
    }
  }
}
