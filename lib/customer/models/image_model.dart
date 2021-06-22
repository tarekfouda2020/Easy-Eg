import 'package:json_annotation/json_annotation.dart'; 

part 'image_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ImageModel {
  @JsonKey(name: 'img')
  final  String img;
  @JsonKey(name: 'id')
  final  int id;

  ImageModel({required this.img, required this.id});

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}

