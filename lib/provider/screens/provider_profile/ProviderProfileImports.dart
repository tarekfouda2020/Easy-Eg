import 'dart:convert';
import 'dart:io';

import 'package:base_flutter/customer/models/CategoryModel.dart';
import 'package:base_flutter/customer/models/image_model.dart';
import 'package:base_flutter/customer/models/sub_category_model.dart';
import 'package:base_flutter/customer/widgets/LinearContainer.dart';
import 'package:base_flutter/general/blocks/cats_cubit/cats_cubit.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/blocks/user_cubit/user_cubit.dart';
import 'package:base_flutter/general/constants/CustomButtonAnimation.dart';
import 'package:base_flutter/general/constants/ModaLs/LoadingDialog.dart';
import 'package:base_flutter/general/screens/location_address/location_cubit/location_cubit.dart';
import 'package:base_flutter/general/utilities/utils_functions/UtilsImports.dart';
import 'package:base_flutter/general/widgets/DefaultAppBar.dart';
import 'package:base_flutter/provider/models/Dtos/ProviderRegisterModel.dart';
import 'package:base_flutter/provider/models/Dtos/WorkImagesModel.dart';
import 'package:base_flutter/provider/resources/ProviderRepoImports.dart';
import 'package:flutter/material.dart';
import 'widgets/ProfileWidgetImports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'ProviderProfile.dart';
part 'ProviderProfileData.dart';