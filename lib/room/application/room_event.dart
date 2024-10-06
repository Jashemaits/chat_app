part of 'room_bloc.dart';

@freezed
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.load() = LoadRoomsEvent;
  const factory RoomEvent.create({required String name}) = CreateRoomEvent;
}
