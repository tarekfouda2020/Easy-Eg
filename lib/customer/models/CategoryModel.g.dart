// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CategoryModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return CategoryModel(
    id: json['id'] as int,
    img: json['img'] as String,
    name: json['name'] as String,
    color: json['color'] as String,
    selected: json['selected'] as bool? ?? false,
    subCategory: (json['subCategory'] as List<dynamic>)
        .map((e) => SubCategoryModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'name': instance.name,
      'color': instance.color,
      'subCategory': instance.subCategory,
      'selected': instance.selected,
    };
