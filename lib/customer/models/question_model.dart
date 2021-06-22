import 'package:json_annotation/json_annotation.dart'; 

part 'question_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class QuestionModel {
  @JsonKey(name: 'question')
  final  String title;
  @JsonKey(name: 'answer')
  final  String answer;
  @JsonKey(defaultValue: false)
  bool expanded;


  QuestionModel({required this.title, required this.answer, required this.expanded});

  factory QuestionModel.fromJson(Map<String, dynamic> json) => _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}

