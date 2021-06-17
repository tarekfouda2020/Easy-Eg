import 'package:json_annotation/json_annotation.dart';

part 'QuestionModel.g.dart';

@JsonSerializable()
class QuestionModel {


  String title;
  String answer;
  bool expanded;


  QuestionModel({required this.title, required this.answer, required this.expanded});

  factory QuestionModel.fromJson(Map<String, dynamic> json) => _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}