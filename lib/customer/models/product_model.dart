import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ProductModel {
  @JsonKey(name: 'idProvider')
  final String idProvider;
  @JsonKey(name: 'coverImg')
  final String coverImg;
  @JsonKey(name: 'logoImg')
  final String logoImg;
  @JsonKey(name: 'mainImg')
  final String mainImg;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'lat')
  final String lat;
  @JsonKey(name: 'lng')
  final String lng;
  @JsonKey(name: 'location')
  final String location;
  @JsonKey(name: 'info')
  final String info;
  @JsonKey(name: 'linkVideo')
  final String linkVideo;
  @JsonKey(name: 'facebook')
  final String facebook;
  @JsonKey(name: 'twitter')
  final String twitter;
  @JsonKey(name: 'telegram')
  final String telegram;
  @JsonKey(name: 'instagram')
  final String instagram;
  @JsonKey(name: 'youType')
  final String youType;
  @JsonKey(name: 'checkWishList')
  bool checkWishList;
  @JsonKey(name: 'imgList')
  final List<String> imgList;

  ProductModel({
    required this.idProvider,
    required this.coverImg,
    required this.logoImg,
    required this.mainImg,
    required this.name,
    required this.lat,
    required this.lng,
    required this.location,
    required this.info,
    required this.linkVideo,
    required this.facebook,
    required this.twitter,
    required this.telegram,
    required this.instagram,
    required this.youType,
    required this.checkWishList,
    required this.imgList,
    required this.phone,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
