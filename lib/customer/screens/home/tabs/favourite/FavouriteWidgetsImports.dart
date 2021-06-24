import 'package:base_flutter/customer/models/product_model.dart';
import 'package:base_flutter/customer/resources/CustomerRepoImports.dart';
import 'package:base_flutter/customer/screens/home/tabs_color_cubit/tabs_color_cubit.dart';
import 'package:base_flutter/customer/widgets/BuildProductItem.dart';
import 'package:base_flutter/customer/widgets/LinearContainer.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/constants/ModaLs/LoadingDialog.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:base_flutter/general/widgets/DefaultAppBar.dart';
import 'package:base_flutter/general/widgets/LoadingButton.dart';
import 'package:base_flutter/general/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'Favourite.dart';
part 'FavouriteData.dart';