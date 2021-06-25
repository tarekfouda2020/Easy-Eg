import 'package:base_flutter/customer/screens/home/tabs_color_cubit/tabs_color_cubit.dart';
import 'package:base_flutter/customer/widgets/LinearContainer.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/constants/GlobalNotification.dart';
import 'package:base_flutter/general/constants/ModaLs/LoadingDialog.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:base_flutter/general/widgets/DefaultAppBar.dart';
import 'package:base_flutter/general/widgets/GenericListView.dart';
import 'package:base_flutter/provider/models/provider_order_model.dart';
import 'package:base_flutter/provider/resources/ProviderRepoImports.dart';
import 'package:base_flutter/provider/widgets/BuildOrderCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/OrdersWidgetsImports.dart';

part 'Orders.dart';
part 'OrdersData.dart';