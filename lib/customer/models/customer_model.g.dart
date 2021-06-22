// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return CustomerModel(
    id: json['id'] as String,
    userName: json['userName'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    lang: json['lang'] as String,
    closeNotify: json['closeNotify'] as bool,
    imgProfile: json['imgProfile'] as String,
    typeUser: json['typeUser'] as int,
  );
}

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'lang': instance.lang,
      'closeNotify': instance.closeNotify,
      'imgProfile': instance.imgProfile,
      'typeUser': instance.typeUser,
    };
