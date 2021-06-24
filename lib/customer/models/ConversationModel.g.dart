// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ConversationModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationModel _$ConversationModelFromJson(Map<String, dynamic> json) {
  return ConversationModel(
    id: json['id'] as int,
    orderNumber: json['orderNumber'] as int,
    lastMsg: json['lastMsg'] as String,
    userId: json['userId'] as String,
    userImg: json['userImg'] as String,
    userName: json['userName'] as String,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$ConversationModelToJson(ConversationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'lastMsg': instance.lastMsg,
      'userId': instance.userId,
      'userImg': instance.userImg,
      'userName': instance.userName,
      'date': instance.date,
    };
