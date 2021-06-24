import 'dart:io';

class ProviderRegisterModel{
  String? userName;
  String? phone;
  String? email;
  String? password;
  String? deviceId;
  String? deviceType;
  String? projectName;
  String? lang;
  String? idsSubCat;
  String? countryId;
  String? governorateId;
  String? cityId;
  String? regoinId;
  String? nameAr;
  String? nameEn;
  String? location;
  String? lat;
  String? lng;
  String? info;
  String? linkVideo;
  String? youType;
  String? whatsApp;
  String? facebook;
  String? instagram;
  String? twitter;
  String? telegram;
  File? logoImg;
  File? mainImg;
  File? coverImg;
  List<File>? images;

  ProviderRegisterModel(
      {this.userName,
      this.phone,
      this.email,
      this.password,
      this.deviceId,
      this.deviceType,
      this.projectName,
      this.lang,
      this.idsSubCat,
      this.countryId,
      this.governorateId,
      this.cityId,
      this.regoinId,
      this.nameAr,
      this.nameEn,
      this.location,
      this.lat,
      this.lng,
      this.info,
      this.linkVideo,
      this.youType,
      this.whatsApp,
      this.facebook,
      this.instagram,
      this.twitter,
      this.telegram,
      this.logoImg,
      this.mainImg,
      this.images,
      this.coverImg});


  Map<String,dynamic> toJson()=>{
    "userName":userName,
    "phone":phone,
    "email":email,
    "ImgProfiles":images,
    "password":password,
    "deviceId":deviceId,
    "deviceType":deviceType,
    "projectName":projectName,
    "lang":lang,
    "idsSubCat":idsSubCat,
    "countryId":countryId,
    "governorateId":governorateId,
    "cityId":cityId,
    "regoinId":regoinId,
    "nameAr":nameAr,
    "nameEn":nameEn,
    "location":location,
    "lat":lat,
    "lng":lng,
    "info":info,
    "linkVideo":linkVideo,
    "youType":youType,
    "whatsApp":whatsApp,
    "facebook":facebook,
    "instagram":instagram,
    "twitter":twitter,
    "telegram":telegram,
    "logoImg":logoImg,
    "mainImg":mainImg,
    "coverImg":coverImg,
  };

}