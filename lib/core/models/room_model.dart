import 'package:chat_app/core/models/call_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart';

@freezed
class RoomModel with _$RoomModel {
  factory RoomModel({
    required String id,
    required String name,
    required List<String> members,
    @TimestampConverter() required DateTime createdAt,
    CallModel? activeCall,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
}

class TimestampConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampConverter();

  @override
  DateTime fromJson(dynamic timestamp) => (timestamp as Timestamp).toDate();

  @override
  dynamic toJson(DateTime date) => date;
}
