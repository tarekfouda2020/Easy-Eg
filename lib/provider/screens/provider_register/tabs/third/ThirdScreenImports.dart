import 'dart:convert';

import 'package:base_flutter/customer/models/CategoryModel.dart';
import 'package:base_flutter/customer/models/DropDownModel.dart';
import 'package:base_flutter/customer/models/sub_category_model.dart';
import 'package:base_flutter/customer/resources/CustomerRepoImports.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/constants/CustomButtonAnimation.dart';
import 'package:base_flutter/general/constants/Inputs/custom_dropDown/CustomDropDown.dart';
import 'package:base_flutter/general/constants/ModaLs/LoadingDialog.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:base_flutter/general/widgets/AuthScaffold.dart';
import 'package:base_flutter/general/widgets/HeaderLogo.dart';
import 'package:base_flutter/general/widgets/LoadingButton.dart';
import 'package:base_flutter/provider/models/Dtos/ProviderRegisterModel.dart';
import 'package:base_flutter/provider/resources/ProviderRepoImports.dart';
import 'package:base_flutter/provider/screens/provider_register/ProviderRegisterImports.dart';
import 'package:flutter/material.dart';
import 'widgets/FinsihRegistWidgetImports.dart';


part 'ThirdScreen.dart';
part 'ThirdScreenData.dart';