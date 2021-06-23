import 'package:json_annotation/json_annotation.dart'; 

part 'customer_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CustomerModel {
  @JsonKey(name: 'id')
  final  String id;
  @JsonKey(name: 'userName')
  final  String userName;
  @JsonKey(name: 'email')
  final  String email;
  @JsonKey(name: 'phone')
  final  String phone;
  @JsonKey(name: 'lang')
  String lang;
  @JsonKey(name: 'closeNotify')
  final  bool closeNotify;
  @JsonKey(name: 'imgProfile')
  final  String imgProfile;
  @JsonKey(name: 'typeUser')
  final  int typeUser;

  CustomerModel({required this.id, required this.userName, required this.email, required this.phone, required this.lang, required this.closeNotify, required this.imgProfile, required this.typeUser});

  factory CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);
}

