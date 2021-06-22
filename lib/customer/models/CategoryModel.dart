import 'package:base_flutter/customer/models/sub_category_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'CategoryModel.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CategoryModel {
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'img')
  final  String img;
  @JsonKey(name: 'name')
  final  String name;
  @JsonKey(name: 'color')
  final  String color;
  @JsonKey(name: 'subCategory')
  final  List<SubCategoryModel> subCategory;

  CategoryModel({required this.id, required this.img, required this.name, required this.color, required this.subCategory});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

