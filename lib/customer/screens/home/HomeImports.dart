import 'package:animations/animations.dart';
import 'package:base_flutter/customer/models/BottomTabModel.dart';
import 'package:base_flutter/customer/models/CategoryModel.dart';
import 'package:base_flutter/general/blocks/auth_cubit/auth_cubit.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/constants/ModaLs/LoadingDialog.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'tabs/home_main/HomeMainImports.dart';
import 'widgets/HomeWidgetsImports.dart';
import 'tabs/favourite/FavouriteWidgetsImports.dart';
import 'tabs_color_cubit/tabs_color_cubit.dart';
import 'tabs/notification/NotificationImports.dart';
import 'tabs/settings/SettingsImports.dart';
import 'tabs/orders/OrdersImports.dart';



part 'Home.dart';
part 'HomeData.dart';