import 'package:base_flutter/customer/models/product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offer_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class OfferModel {
  @JsonKey(name: 'img')
  final  String img;
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'provider')
  final  ProductModel provider;

  OfferModel({required this.img, required this.id, required this.provider});

  factory OfferModel.fromJson(Map<String, dynamic> json) => _$OfferModelFromJson(json);

  Map<String, dynamic> toJson() => _$OfferModelToJson(this);
}

