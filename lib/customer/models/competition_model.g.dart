// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompetitionModel _$CompetitionModelFromJson(Map<String, dynamic> json) {
  return CompetitionModel(
    name: json['name'] as String,
    id: json['id'] as int,
    date: json['date'] as String,
    img: json['img'] as String,
    videoUrl: json['videoUrl'] as String,
  );
}

Map<String, dynamic> _$CompetitionModelToJson(CompetitionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date,
      'img': instance.img,
      'videoUrl': instance.videoUrl,
    };
