// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return OfferModel(
    img: json['img'] as String,
    id: json['id'] as int,
    provider: ProductModel.fromJson(json['provider'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OfferModelToJson(OfferModel instance) =>
    <String, dynamic>{
      'img': instance.img,
      'id': instance.id,
      'provider': instance.provider,
    };
