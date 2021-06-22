import 'package:json_annotation/json_annotation.dart'; 

part 'order_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class OrderModel {
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'name')
  final  String name;
  @JsonKey(name: 'logoImg')
  final  String logoImg;
  @JsonKey(name: 'phone')
  final  String phone;
  @JsonKey(name: 'beneficiaryName')
  final  String beneficiaryName;
  @JsonKey(name: 'date')
  final  String date;
  @JsonKey(name: 'providerLocation')
  final  String providerLocation;
  @JsonKey(name: 'providerPhone')
  final  String providerPhone;
  @JsonKey(name: 'stutes')
  final  String stutes;
  @JsonKey(name: 'stutesId')
  final  int stutesId;

  OrderModel({required this.id, required this.name, required this.logoImg, required this.phone, required this.beneficiaryName, required this.date, required this.providerLocation, required this.providerPhone, required this.stutes, required this.stutesId});

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}

