import 'package:json_annotation/json_annotation.dart'; 

part 'notify_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class NotifyModel {
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'text')
  final  String text;
  @JsonKey(name: 'date')
  final  String date;
  @JsonKey(name: 'img')
  final  String img;
  @JsonKey(name: 'type')
  final  int type;

  NotifyModel({required this.id, required this.text, required this.date, required this.type, required this.img});

  factory NotifyModel.fromJson(Map<String, dynamic> json) => _$NotifyModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotifyModelToJson(this);
}

