// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerRegisterModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerRegisterModel _$CustomerRegisterModelFromJson(
    Map<String, dynamic> json) {
  return CustomerRegisterModel(
    userName: json['userName'] as String?,
    phone: json['phone'] as String?,
    email: json['email'] as String?,
    password: json['password'] as String?,
    deviceId: json['deviceId'] as String?,
    deviceType: json['deviceType'] as String?,
    projectName: json['projectName'] as String?,
    lang: json['lang'] as String?,
  );
}

Map<String, dynamic> _$CustomerRegisterModelToJson(
        CustomerRegisterModel instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
      'deviceId': instance.deviceId,
      'deviceType': instance.deviceType,
      'projectName': instance.projectName,
      'lang': instance.lang,
    };
