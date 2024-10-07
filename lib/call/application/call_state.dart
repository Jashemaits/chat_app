part of 'call_bloc.dart';

@freezed
class CallState with _$CallState {
  const factory CallState({
    CallModel? currentCall,
    MediaStream? localStream,
    MediaStream? remoteStream,
    RTCPeerConnection? peerConnection,
    String? errorMessage,
  }) = _CallState;

  factory CallState.initial() => const CallState();
}
