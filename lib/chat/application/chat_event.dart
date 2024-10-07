part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.loadMessages({required String roomId}) = LoadMessages;
  const factory ChatEvent.sendMessage({
    required String roomId,
    required String message,
  }) = SendMessage;
  const factory ChatEvent.messagesReceived({
    required List<MessageModel> messages,
  }) = MessagesReceived;
}
