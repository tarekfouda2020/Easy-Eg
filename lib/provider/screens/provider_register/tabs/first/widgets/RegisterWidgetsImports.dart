import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/constants/Inputs/InkWellTextField.dart';
import 'package:base_flutter/general/constants/Inputs/LabelTextField.dart';
import 'package:base_flutter/general/constants/Inputs/RichTextFiled.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:base_flutter/general/utilities/validator/Validator.dart';
import 'package:base_flutter/general/widgets/LoadingButton.dart';
import 'package:base_flutter/general/widgets/MyText.dart';
import 'package:base_flutter/provider/models/Dtos/ProviderRegisterModel.dart';
import 'package:base_flutter/provider/screens/provider_register/ProviderRegisterImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../FirstScreenImports.dart';


part 'BuildRegisterForm.dart';
part 'BuildText.dart';
part 'BuildRegisterButton.dart';
part 'BuildLoginAction.dart';
