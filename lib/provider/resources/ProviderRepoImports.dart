import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/models/CategoryModel.dart';
import 'package:base_flutter/general/blocks/lang_cubit/lang_cubit.dart';
import 'package:base_flutter/general/constants/GlobalState.dart';
import 'package:base_flutter/general/utilities/dio_helper/DioImports.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/utilities/utils_functions/UtilsImports.dart';
import 'package:base_flutter/provider/models/Dtos/ProviderRegisterModel.dart';
import 'package:base_flutter/provider/models/provider_offer_model.dart';
import 'package:base_flutter/provider/models/provider_order_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';



part 'ProviderRepository.dart';
part 'ProviderAuthMethods.dart';
part 'ProviderHttpMethods.dart';