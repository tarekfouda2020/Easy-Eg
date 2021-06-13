import 'package:json_annotation/json_annotation.dart';

part 'DropDownModel.g.dart';

@JsonSerializable()
class DropDownModel {


  String name;
  int id;


  DropDownModel(this.name, this.id);

  factory DropDownModel.fromJson(Map<String, dynamic> json) => _$DropDownModelFromJson(json);

  Map<String, dynamic> toJson() => _$DropDownModelToJson(this);
}