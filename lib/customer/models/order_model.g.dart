// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return OrderModel(
    id: json['id'] as int,
    providerId: json['providerId'] as String,
    name: json['name'] as String,
    logoImg: json['logoImg'] as String,
    phone: json['phone'] as String,
    beneficiaryName: json['beneficiaryName'] as String,
    date: json['date'] as String,
    providerLocation: json['providerLocation'] as String,
    providerPhone: json['providerPhone'] as String,
    stutes: json['stutes'] as String,
    stutesId: json['stutesId'] as int,
  );
}

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoImg': instance.logoImg,
      'phone': instance.phone,
      'beneficiaryName': instance.beneficiaryName,
      'date': instance.date,
      'providerLocation': instance.providerLocation,
      'providerPhone': instance.providerPhone,
      'providerId': instance.providerId,
      'stutes': instance.stutes,
      'stutesId': instance.stutesId,
    };
