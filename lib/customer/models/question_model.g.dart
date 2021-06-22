// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return QuestionModel(
    title: json['question'] as String,
    answer: json['answer'] as String,
    expanded: json['expanded'] as bool? ?? false,
  );
}

Map<String, dynamic> _$QuestionModelToJson(QuestionModel instance) =>
    <String, dynamic>{
      'question': instance.title,
      'answer': instance.answer,
      'expanded': instance.expanded,
    };
