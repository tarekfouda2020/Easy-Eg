import 'dart:io';

import 'package:base_flutter/customer/models/image_model.dart';

class WorkImagesModel{

  List<ImageModel> existImages;
  List<File> addedImages;

  WorkImagesModel({this.existImages = const [], this.addedImages = const []});
}