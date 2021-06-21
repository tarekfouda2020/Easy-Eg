// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    id: json['id'] as int,
    img: json['img'] as String,
    name: json['name'] as String,
    color: json['color'] as String,
    subCategory: (json['subCategory'] as List<dynamic>)
        .map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'name': instance.name,
      'color': instance.color,
      'subCategory': instance.subCategory,
    };
