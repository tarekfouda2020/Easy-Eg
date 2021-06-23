import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/models/Dtos/AddReservationModel.dart';
import 'package:base_flutter/customer/models/product_model.dart';
import 'package:base_flutter/customer/resources/CustomerRepoImports.dart';
import 'package:base_flutter/customer/screens/add_reservation/widgets/AddReservWidgetImports.dart';
import 'package:base_flutter/customer/widgets/LinearContainer.dart';
import 'package:base_flutter/general/blocks/generic_cubit/generic_cubit.dart';
import 'package:base_flutter/general/constants/CustomButtonAnimation.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/utilities/utils_functions/AdaptivePicker.dart';
import 'package:base_flutter/general/widgets/DefaultAppBar.dart';
import 'package:base_flutter/general/widgets/LoadingButton.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

part 'AddReservation.dart';
part 'AddReservationData.dart';