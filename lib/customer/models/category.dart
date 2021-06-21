import 'package:json_annotation/json_annotation.dart';
import 'sub_category.dart';
part 'category.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class Category {
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'img')
  final  String img;
  @JsonKey(name: 'name')
  final  String name;
  @JsonKey(name: 'color')
  final  String color;
  @JsonKey(name: 'subCategory')
  final  List<SubCategory> subCategory;

  Category({required this.id, required this.img, required this.name, required this.color, required this.subCategory});

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

