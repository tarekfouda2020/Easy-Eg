
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputTextStyle extends TextStyle{

  final String lang;
  final Color color;

  CustomInputTextStyle({required this.lang,this.color=Colors.black});


  @override
  String get fontFamily => lang =="ar"?GoogleFonts.cairo().fontFamily!:GoogleFonts.roboto().fontFamily!;

  @override
  // TODO: implement fontSize
  double get fontSize => lang =="ar"?16:18;


}