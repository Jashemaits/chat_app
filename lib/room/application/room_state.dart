part of 'room_bloc.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.initial() = RoomInitial;
  const factory RoomState.loading() = RoomLoading;
  const factory RoomState.loaded(List<RoomModel> rooms) = RoomLoaded;
  const factory RoomState.error(String message) = RoomError;
}
