// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return SubCategory(
    id: json['id'] as int,
    img: json['img'] as String,
    name: json['name'] as String,
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'name': instance.name,
      'color': instance.color,
    };
