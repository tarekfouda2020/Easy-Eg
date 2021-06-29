// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotifyModel _$NotifyModelFromJson(Map<String, dynamic> json) {
  return NotifyModel(
    orderId: json['orderId'] as int,
    id: json['id'] as int,
    text: json['text'] as String,
    date: json['date'] as String,
    type: json['type'] as int,
    img: json['img'] as String,
  );
}

Map<String, dynamic> _$NotifyModelToJson(NotifyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'date': instance.date,
      'img': instance.img,
      'type': instance.type,
      'orderId': instance.orderId,
    };
