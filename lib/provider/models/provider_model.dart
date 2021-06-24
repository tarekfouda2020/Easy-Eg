import 'package:base_flutter/customer/models/image_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'provider_model.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ProviderModel {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'lang')
  String lang;
  @JsonKey(name: 'closeNotify')
  final bool closeNotify;
  @JsonKey(name: 'imgProfile')
  final String imgProfile;
  @JsonKey(name: 'typeUser')
  final int typeUser;
  @JsonKey(name: 'nameAr')
  final String nameAr;
  @JsonKey(name: 'nameEn')
  final String nameEn;
  @JsonKey(name: 'logoImg')
  final String logoImg;
  @JsonKey(name: 'mainImg')
  final String mainImg;
  @JsonKey(name: 'coverImg')
  final String coverImg;
  @JsonKey(name: 'location')
  final String location;
  @JsonKey(name: 'lat')
  final String lat;
  @JsonKey(name: 'lng')
  final String lng;
  @JsonKey(name: 'info')
  final String info;
  @JsonKey(name: 'linkVideo')
  final String linkVideo;
  @JsonKey(name: 'youTupe')
  final String youTupe;
  @JsonKey(name: 'whatsApp')
  final String whatsApp;
  @JsonKey(name: 'facebook')
  final String facebook;
  @JsonKey(name: 'instagram')
  final String instagram;
  @JsonKey(name: 'twitter')
  final String twitter;
  @JsonKey(name: 'telegram')
  final String telegram;
  @JsonKey(name: 'countryName')
  final String countryName;
  @JsonKey(name: 'countryId')
  final int countryId;
  @JsonKey(name: 'cityName')
  final String cityName;
  @JsonKey(name: 'cityId')
  final int cityId;
  @JsonKey(name: 'governorateName')
  final String governorateName;
  @JsonKey(name: 'governorateId')
  final int governorateId;
  @JsonKey(name: 'regoinName')
  final String regoinName;
  @JsonKey(name: 'regoinId')
  final int regoinId;
  @JsonKey(name: 'imgList')
  final List<ImageModel> imgList;

  ProviderModel(
      {required this.id,
      required this.userName,
      required this.email,
      required this.phone,
      required this.lang,
      required this.closeNotify,
      required this.imgProfile,
      required this.typeUser,
      required this.nameAr,
      required this.nameEn,
      required this.imgList,
      required this.logoImg,
      required this.mainImg,
      required this.coverImg,
      required this.location,
      required this.lat,
      required this.lng,
      required this.info,
      required this.linkVideo,
      required this.youTupe,
      required this.whatsApp,
      required this.facebook,
      required this.instagram,
      required this.twitter,
      required this.telegram,
      required this.countryName,
      required this.countryId,
      required this.cityName,
      required this.cityId,
      required this.governorateName,
      required this.governorateId,
      required this.regoinName,
      required this.regoinId});

  factory ProviderModel.fromJson(Map<String, dynamic> json) =>
      _$ProviderModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderModelToJson(this);
}
