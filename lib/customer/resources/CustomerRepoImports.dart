import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/models/ConversationModel.dart';
import 'package:base_flutter/customer/models/DropDownModel.dart';
import 'package:base_flutter/customer/models/CategoryModel.dart';
import 'package:base_flutter/customer/models/Dtos/AddCompetitionModel.dart';
import 'package:base_flutter/customer/models/Dtos/AddReservationModel.dart';
import 'package:base_flutter/customer/models/Dtos/CustomerRegisterModel.dart';
import 'package:base_flutter/customer/models/Dtos/HomeMainModel.dart';
import 'package:base_flutter/customer/models/Dtos/UpdateCustomerModel.dart';
import 'package:base_flutter/customer/models/MessageModel.dart';
import 'package:base_flutter/customer/models/competition_model.dart';
import 'package:base_flutter/customer/models/customer_model.dart';
import 'package:base_flutter/customer/models/offer_model.dart';
import 'package:base_flutter/customer/models/order_model.dart';
import 'package:base_flutter/customer/models/product_model.dart';
import 'package:base_flutter/customer/models/question_model.dart';
import 'package:base_flutter/customer/models/social_model.dart';
import 'package:base_flutter/customer/models/sub_category_model.dart';
import 'package:base_flutter/general/blocks/lang_cubit/lang_cubit.dart';
import 'package:base_flutter/general/blocks/user_cubit/user_cubit.dart';
import 'package:base_flutter/general/constants/GlobalState.dart';
import 'package:base_flutter/general/utilities/dio_helper/DioImports.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/utilities/utils_functions/UtilsImports.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';



part 'CustomerAuthMethods.dart';
part 'CustomerHttpMethods.dart';
part 'CustomerRepository.dart';