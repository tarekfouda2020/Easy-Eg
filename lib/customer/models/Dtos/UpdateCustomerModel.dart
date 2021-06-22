import 'dart:io';

class UpdateCustomerModel{

  String? name;
  String? phone;
  String? mail;
  String? lang;
  File? image;

  UpdateCustomerModel({this.name, this.phone, this.mail,this.image,this.lang});

  Map<String,dynamic> toJson()=>{
    "lang": lang,
    "userName":name,
    "email":mail,
    "phone":phone,
    "imgProfile": image
  };

}