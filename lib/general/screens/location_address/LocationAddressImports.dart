import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/models/LocationModel.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:base_flutter/general/utilities/utils_functions/UtilsImports.dart';
import 'package:base_flutter/general/widgets/MyText.dart';
import 'package:base_flutter/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'location_cubit/location_cubit.dart';


part 'LocationAddress.dart';
part 'LocationAddressData.dart';