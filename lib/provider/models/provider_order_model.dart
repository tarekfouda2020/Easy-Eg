import 'package:json_annotation/json_annotation.dart'; 

part 'provider_order_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ProviderOrderModel {
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'userName')
  final  String userName;
  @JsonKey(name: 'userId')
  final  String userId;
  @JsonKey(name: 'userImg')
  final  String userImg;
  @JsonKey(name: 'phone')
  final  String phone;
  @JsonKey(name: 'beneficiaryName')
  final  String beneficiaryName;
  @JsonKey(name: 'date')
  final  String date;
  @JsonKey(name: 'providerImg')
  final  String providerImg;
  @JsonKey(name: 'stutes')
  final  String stutes;
  @JsonKey(name: 'stutesId')
  final  int stutesId;

  ProviderOrderModel({required this.id,required this.userId, required this.userName, required this.userImg, required this.phone, required this.beneficiaryName, required this.date, required this.providerImg, required this.stutes, required this.stutesId});

  factory ProviderOrderModel.fromJson(Map<String, dynamic> json) => _$ProviderOrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderOrderModelToJson(this);
}

