// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionDetailsModel _$ChampionDetailsModelFromJson(Map<String, dynamic> json) {
  return ChampionDetailsModel(
    name: json['name'] as String,
    id: json['id'] as int,
    date: DateTime.parse(json['date'] as String),
    img: json['img'] as String,
    videoUrl: json['videoUrl'] as String,
  );
}

Map<String, dynamic> _$ChampionDetailsModelToJson(
        ChampionDetailsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'img': instance.img,
      'videoUrl': instance.videoUrl,
    };
