// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomModelImpl _$$RoomModelImplFromJson(Map<String, dynamic> json) =>
    _$RoomModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$RoomModelImplToJson(_$RoomModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'members': instance.members,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
