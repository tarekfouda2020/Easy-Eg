import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/models/sub_category_model.dart';
import 'package:base_flutter/general/blocks/cats_cubit/cats_cubit.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/blocks/user_cubit/user_cubit.dart';
import 'package:base_flutter/general/constants/Inputs/InkWellTextField.dart';
import 'package:base_flutter/general/constants/Inputs/LabelTextField.dart';
import 'package:base_flutter/general/constants/Inputs/RichTextFiled.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/screens/location_address/location_cubit/location_cubit.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/utilities/utils_functions/UtilsImports.dart';
import 'package:base_flutter/general/utilities/validator/Validator.dart';
import 'package:base_flutter/general/widgets/CachedImage.dart';
import 'package:base_flutter/general/widgets/DefaultButton.dart';
import 'package:base_flutter/general/widgets/MyText.dart';
import 'package:base_flutter/provider/models/Dtos/WorkImagesModel.dart';
import 'package:base_flutter/provider/screens/provider_profile/ProviderProfileImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'BuildEditForm.dart';
part 'BuildProfileImage.dart';
part 'BuildProfileButtons.dart';
part 'BuildCategoriesView.dart';