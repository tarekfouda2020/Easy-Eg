import 'package:json_annotation/json_annotation.dart';

part 'MessageModel.g.dart';

@JsonSerializable()
class MessageModel {


  MessageModel({
     this.id,
     this.type,
     this.senderId,
     this.receiverId,
     this.message,
     this.date,
  });

  int? id;
  int? type;
  String? senderId;
  String? receiverId;
  String? message;
  String? date;




  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}