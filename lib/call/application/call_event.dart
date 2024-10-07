part of 'call_bloc.dart';

@freezed
class CallEvent with _$CallEvent {
  const factory CallEvent.startCall({
    required String roomId,
    required String receiverId,
    required String receiverName,
    required CallType type,
  }) = StartCall;

  const factory CallEvent.receiveCall({
    required CallModel incomingCall,
  }) = ReceiveCall;

  const factory CallEvent.acceptCall({
    required String roomId,
    required CallModel activeCall,
  }) = AcceptCall;

  const factory CallEvent.rejectCall({
    required String roomId,
    required String callId,
  }) = RejectCall;

  const factory CallEvent.endCall({
    required String roomId,
  }) = EndCall;

  const factory CallEvent.updateCallStatus({
    required CallStatus status,
  }) = UpdateCallStatus;
}
