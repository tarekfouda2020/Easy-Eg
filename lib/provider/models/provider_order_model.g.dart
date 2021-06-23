// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProviderOrderModel _$ProviderOrderModelFromJson(Map<String, dynamic> json) {
  return ProviderOrderModel(
    id: json['id'] as int,
    userName: json['userName'] as String,
    userImg: json['userImg'] as String,
    phone: json['phone'] as String,
    beneficiaryName: json['beneficiaryName'] as String,
    date: json['date'] as String,
    providerImg: json['providerImg'] as String,
    stutes: json['stutes'] as String,
    stutesId: json['stutesId'] as int,
  );
}

Map<String, dynamic> _$ProviderOrderModelToJson(ProviderOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'userImg': instance.userImg,
      'phone': instance.phone,
      'beneficiaryName': instance.beneficiaryName,
      'date': instance.date,
      'providerImg': instance.providerImg,
      'stutes': instance.stutes,
      'stutesId': instance.stutesId,
    };
