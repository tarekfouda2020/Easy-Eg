import 'package:json_annotation/json_annotation.dart'; 

part 'social_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class SocialModel {
  @JsonKey(name: 'name')
  final  String name;
  @JsonKey(name: 'img')
  final  String img;
  @JsonKey(name: 'url')
  final  String url;

  SocialModel({required this.name, required this.img, required this.url});

  factory SocialModel.fromJson(Map<String, dynamic> json) => _$SocialModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocialModelToJson(this);
}

