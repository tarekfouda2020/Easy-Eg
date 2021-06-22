import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/models/Dtos/CustomerRegisterModel.dart';
import 'package:base_flutter/customer/models/Dtos/UpdateCustomerModel.dart';
import 'package:base_flutter/customer/models/customer_model.dart';
import 'package:base_flutter/general/blocks/lang_cubit/lang_cubit.dart';
import 'package:base_flutter/general/blocks/user_cubit/user_cubit.dart';
import 'package:base_flutter/general/utilities/dio_helper/DioImports.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/utilities/utils_functions/UtilsImports.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerAuthMethods {
  final BuildContext context;

  CustomerAuthMethods(this.context);

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<bool> registerUser(CustomerRegisterModel model) async {
    model.lang = context.read<LangCubit>().state.locale.languageCode;
    model.deviceId = await messaging.getToken();
    var _data = await DioHelper(context: context).post(
      url: "/api/v1/RegisterClient",
      body: model.toJson(),
      showLoader: false,
    );
    if (_data != null) {
      AutoRouter.of(context)
          .push(ActiveAccountRoute(userId: _data["data"]["id"]));
      return true;
    }
    return false;
  }

  Future<bool> updateProfile(UpdateCustomerModel model) async {
    model.lang = context.read<LangCubit>().state.locale.languageCode;

    var _data = await DioHelper(context: context).uploadFile(
      url: "/api/v1/UpdateDataUser",
      body: model.toJson(),
      showLoader: false,
    );
    if (_data != null) {
      var user = context.read<UserCubit>();
      user.state.model.customerModel=CustomerModel.fromJson(_data["data"]);
      user.onUpdateUserData(user.state.model);
      Utils.saveUserData(user.state.model);
      return true;
    }
    return false;
  }


}
