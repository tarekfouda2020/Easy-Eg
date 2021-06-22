import 'package:json_annotation/json_annotation.dart';

part 'CustomerRegisterModel.g.dart';

@JsonSerializable()
class CustomerRegisterModel {


  String? userName;
  String? phone;
  String? email;
  String? password;
  String? deviceId;
  String? deviceType;
  String? projectName;
  String? lang;


  CustomerRegisterModel(
      {this.userName,
      this.phone,
      this.email,
      this.password,
      this.deviceId,
      this.deviceType,
      this.projectName,
      this.lang});

  factory CustomerRegisterModel.fromJson(Map<String, dynamic> json) => _$CustomerRegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerRegisterModelToJson(this);
}