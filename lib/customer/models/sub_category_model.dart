import 'package:json_annotation/json_annotation.dart'; 

part 'sub_category_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class SubCategoryModel {
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'img')
  final  String img;
  @JsonKey(name: 'name')
  final  String name;
  @JsonKey(name: 'color')
  final  String color;

  SubCategoryModel({required this.id, required this.img, required this.name, required this.color});

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) => _$SubCategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubCategoryModelToJson(this);
}

