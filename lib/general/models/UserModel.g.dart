// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    customerModel: json['customerModel'] == null
        ? null
        : CustomerModel.fromJson(json['customerModel'] as Map<String, dynamic>),
    token: json['token'] as String?,
    lang: json['lang'] as String?,
    type: json['type'] as String?,
  )..providerModel = json['providerModel'] == null
      ? null
      : ProviderModel.fromJson(json['providerModel'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'customerModel': instance.customerModel,
      'providerModel': instance.providerModel,
      'token': instance.token,
      'lang': instance.lang,
      'type': instance.type,
    };
