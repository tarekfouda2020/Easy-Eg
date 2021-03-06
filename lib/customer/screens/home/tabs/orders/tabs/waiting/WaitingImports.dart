import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/models/order_model.dart';
import 'package:base_flutter/customer/resources/CustomerRepoImports.dart';
import 'package:base_flutter/customer/screens/home/tabs/orders/widgets/OrdersWidgetsImports.dart';
import 'package:base_flutter/customer/screens/order_details/OrderDetailsImports.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/constants/GlobalNotification.dart';
import 'package:base_flutter/general/constants/ModaLs/LoadingDialog.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/localization/LocalizationMethods.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/widgets/GenericListView.dart';
import 'package:base_flutter/general/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'Waiting.dart';
part 'WaitingData.dart';