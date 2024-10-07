import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_model.freezed.dart';
part 'call_model.g.dart';

enum CallStatus { idle, calling, ringing, connected, ended }

enum CallType { audio, video }

@freezed
class CallModel with _$CallModel {
  const factory CallModel({
    required String callId,
    required final String roomId,
    required String callerId,
    required String callerName,
    required String receiverId,
    required String receiverName,
    required CallType type,
    @Default(CallStatus.idle) CallStatus status,
    DateTime? startTime,
    DateTime? endTime,
  }) = _CallModel;

  factory CallModel.fromJson(Map<String, dynamic> json) =>
      _$CallModelFromJson(json);
}
