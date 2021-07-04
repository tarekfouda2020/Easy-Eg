import 'package:json_annotation/json_annotation.dart'; 

part 'competition_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CompetitionModel {
  @JsonKey(name: 'name')
  final  String name;
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'date')
  final  String date;
  @JsonKey(name: 'img')
  final  String img;
  @JsonKey(name: 'videoUrl')
  final  String videoUrl;

  CompetitionModel({required this.name, required this.id, required this.date, required this.img, required this.videoUrl});

  factory CompetitionModel.fromJson(Map<String, dynamic> json) => _$CompetitionModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompetitionModelToJson(this);
}

