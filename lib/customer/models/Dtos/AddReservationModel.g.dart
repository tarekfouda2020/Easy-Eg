// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddReservationModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddReservationModel _$AddReservationModelFromJson(Map<String, dynamic> json) {
  return AddReservationModel(
    name: json['name'] as String?,
    phone: json['phone'] as String?,
    date: json['date'] as String?,
    providerId: json['providerId'] as String?,
    lang: json['lang'] as String?,
  );
}

Map<String, dynamic> _$AddReservationModelToJson(
        AddReservationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'date': instance.date,
      'providerId': instance.providerId,
      'lang': instance.lang,
    };
