// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CallModelImpl _$$CallModelImplFromJson(Map<String, dynamic> json) =>
    _$CallModelImpl(
      callId: json['callId'] as String,
      roomId: json['roomId'] as String,
      callerId: json['callerId'] as String,
      callerName: json['callerName'] as String,
      receiverId: json['receiverId'] as String,
      receiverName: json['receiverName'] as String,
      type: $enumDecode(_$CallTypeEnumMap, json['type']),
      status: $enumDecodeNullable(_$CallStatusEnumMap, json['status']) ??
          CallStatus.idle,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$$CallModelImplToJson(_$CallModelImpl instance) =>
    <String, dynamic>{
      'callId': instance.callId,
      'roomId': instance.roomId,
      'callerId': instance.callerId,
      'callerName': instance.callerName,
      'receiverId': instance.receiverId,
      'receiverName': instance.receiverName,
      'type': _$CallTypeEnumMap[instance.type]!,
      'status': _$CallStatusEnumMap[instance.status]!,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
    };

const _$CallTypeEnumMap = {
  CallType.audio: 'audio',
  CallType.video: 'video',
};

const _$CallStatusEnumMap = {
  CallStatus.idle: 'idle',
  CallStatus.calling: 'calling',
  CallStatus.ringing: 'ringing',
  CallStatus.connected: 'connected',
  CallStatus.ended: 'ended',
};
