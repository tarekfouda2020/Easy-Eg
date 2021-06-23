// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategoryModel _$SubCategoryModelFromJson(Map<String, dynamic> json) {
  return SubCategoryModel(
    id: json['id'] as int,
    img: json['img'] as String,
    name: json['name'] as String,
    color: json['color'] as String,
    selected: json['selected'] as bool? ?? false,
  );
}

Map<String, dynamic> _$SubCategoryModelToJson(SubCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'name': instance.name,
      'color': instance.color,
      'selected': instance.selected,
    };
