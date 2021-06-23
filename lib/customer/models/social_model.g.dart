// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialModel _$SocialModelFromJson(Map<String, dynamic> json) {
  return SocialModel(
    name: json['name'] as String,
    img: json['img'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$SocialModelToJson(SocialModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'img': instance.img,
      'url': instance.url,
    };
