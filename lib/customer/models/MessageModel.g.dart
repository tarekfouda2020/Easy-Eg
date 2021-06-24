// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MessageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return MessageModel(
    id: json['id'] as int?,
    type: json['type'] as int?,
    senderId: json['senderId'] as String?,
    receiverId: json['receiverId'] as String?,
    message: json['message'] as String?,
    date: json['date'] as String?,
  );
}

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'message': instance.message,
      'date': instance.date,
    };
