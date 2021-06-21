import 'dart:ui';
import 'package:flutter/material.dart';

class MyColors{
  static Color primary =  Color(0xff269492);
  static Color secondary =  Color(0xff8a8a8a);
  static Color header =  Color(0xff4f91a8);
  static Color bg=Color(0xfffffafa);
  static Color providerPrimary = Color(0xff79617f);
  static Color gold=Color(0xffe4aa69);
  static Color red=Color(0xffb9072b);
  static Color grey=Colors.grey;
  static Color greyWhite=Colors.grey.withOpacity(.2);
  static Color black=Color(0xff031626);
  static Color blackOpacity=Colors.black54;
  static Color white=Colors.white;
  static Color notifyColor=Colors.black54;


  static Color convertColor(String color){
    int hex = int.parse(color.replaceFirst("#", "0xff"));
    return Color(hex);
  }


}