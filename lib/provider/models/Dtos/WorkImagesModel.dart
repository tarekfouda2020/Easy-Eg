import 'dart:io';

class WorkImagesModel{

  List<String> existImages;
  List<File> addedImages;

  WorkImagesModel({this.existImages = const [], this.addedImages = const []});
}