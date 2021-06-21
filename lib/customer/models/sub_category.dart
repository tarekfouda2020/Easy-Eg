import 'package:json_annotation/json_annotation.dart'; 

part 'sub_category.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class SubCategory {
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'img')
  final  String img;
  @JsonKey(name: 'name')
  final  String name;
  @JsonKey(name: 'color')
  final  String color;

  SubCategory({required this.id, required this.img, required this.name, required this.color});

  factory SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);
}

