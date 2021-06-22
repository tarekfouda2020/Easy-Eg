// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    idProvider: json['idProvider'] as String,
    coverImg: json['coverImg'] as String,
    logoImg: json['logoImg'] as String,
    mainImg: json['mainImg'] as String,
    name: json['name'] as String,
    lat: json['lat'] as String,
    lng: json['lng'] as String,
    location: json['location'] as String,
    info: json['info'] as String,
    linkVideo: json['linkVideo'] as String,
    facebook: json['facebook'] as String,
    twitter: json['twitter'] as String,
    telegram: json['telegram'] as String,
    instagram: json['instagram'] as String,
    youType: json['youType'] as String,
    checkWishList: json['checkWishList'] as bool,
    imgList:
        (json['imgList'] as List<dynamic>).map((e) => e as String).toList(),
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'idProvider': instance.idProvider,
      'coverImg': instance.coverImg,
      'logoImg': instance.logoImg,
      'mainImg': instance.mainImg,
      'name': instance.name,
      'phone': instance.phone,
      'lat': instance.lat,
      'lng': instance.lng,
      'location': instance.location,
      'info': instance.info,
      'linkVideo': instance.linkVideo,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'telegram': instance.telegram,
      'instagram': instance.instagram,
      'youType': instance.youType,
      'checkWishList': instance.checkWishList,
      'imgList': instance.imgList,
    };
