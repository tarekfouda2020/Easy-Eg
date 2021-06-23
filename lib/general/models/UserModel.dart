import 'package:base_flutter/customer/models/customer_model.dart';
import 'package:base_flutter/provider/models/provider_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'UserModel.g.dart';

@JsonSerializable()
class UserModel {


  CustomerModel? customerModel;
  ProviderModel? providerModel;
  @JsonKey(name: "token")
  String? token;
  @JsonKey(name: "lang")
  String? lang;
  @JsonKey(name: "type")
  String? type;


  UserModel({this.customerModel, this.token, this.lang, this.type});



  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}