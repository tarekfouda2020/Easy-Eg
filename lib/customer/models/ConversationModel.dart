import 'package:json_annotation/json_annotation.dart';

part 'ConversationModel.g.dart';

@JsonSerializable(nullable: true)
class ConversationModel {


  ConversationModel({
    required this.id,
    required this.orderNumber,
    required this.lastMsg,
    required this.userId,
    required this.userImg,
    required this.userName,
    required this.date,
  });

  int id;
  int orderNumber;
  String lastMsg;
  String userId;
  String userImg;
  String userName;
  String date;



  factory ConversationModel.fromJson(Map<String, dynamic> json) => _$ConversationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationModelToJson(this);
}