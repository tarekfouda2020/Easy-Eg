// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotifyModel _$NotifyModelFromJson(Map<String, dynamic> json) {
  return NotifyModel(
    id: json['id'] as int,
    text: json['text'] as String,
    date: json['date'] as String,
    type: json['type'] as int,
  );
}

Map<String, dynamic> _$NotifyModelToJson(NotifyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'date': instance.date,
      'type': instance.type,
    };
