import 'package:json_annotation/json_annotation.dart';

part 'champion_details_model.g.dart';

@JsonSerializable(nullable: true)
class ChampionDetailsModel {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "date")
  DateTime date;
  @JsonKey(name: "img")
  String img;
  @JsonKey(name: "videoUrl")
  String videoUrl;

  ChampionDetailsModel(
      {required this.name,
      required this.id,
      required this.date,
      required this.img,
      required this.videoUrl});

  factory ChampionDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ChampionDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChampionDetailsModelToJson(this);
}
