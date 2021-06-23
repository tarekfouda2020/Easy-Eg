import 'package:json_annotation/json_annotation.dart'; 

part 'provider_offer_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ProviderOfferModel {
  @JsonKey(name: 'id')
  final  int id;
  @JsonKey(name: 'img')
  final  String img;

  ProviderOfferModel({required this.id, required this.img});

  factory ProviderOfferModel.fromJson(Map<String, dynamic> json) => _$ProviderOfferModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderOfferModelToJson(this);
}

