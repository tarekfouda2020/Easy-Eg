import 'dart:io';
import 'package:base_flutter/general/blocks/lang_cubit/lang_cubit.dart';
import 'package:base_flutter/general/blocks/user_cubit/user_cubit.dart';
import 'package:base_flutter/general/utilities/dio_helper/DioImports.dart';
import 'package:base_flutter/general/utilities/utils_functions/UtilsImports.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneralHttpMethods {
  final BuildContext context;


  FirebaseMessaging messaging = FirebaseMessaging.instance;

  GeneralHttpMethods(this.context);

  Future<bool> userLogin(String phone, String pass) async {
    String? _token = await messaging.getToken();
    String _lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {
      "phone": "$phone",
      "password": "$pass",
      "lang": "$_lang",
      "deviceId": "$_token",
      "projectName": "Easy",
      "deviceType": Platform.isIOS ? "ios" : "android",
    };
    var _data = await DioHelper(context: context).post(url: "/api/v1/login",body: body,showLoader: false);

    if (_data != null) {
      await Utils.setDeviceId("$_token");
      await Utils.manipulateLoginData(_data,context);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> sendCode(String code, String userId) async {
    String lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {"lang": lang, "code": code, "userId": userId};
    var _data = await DioHelper(context: context)
        .post(url: "/api/v1/ConfirmCodeRegister", body: body, showLoader: false);
    if (_data != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> checkActive(String phone) async {
    String lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {"lang": lang, "phone": phone};
    var _data = await DioHelper(context: context).get(url: "/api/v1/checkUser", body: body);
    if (_data != null) {
      return _data["active"];
    } else {
      return false;
    }
  }

  Future<bool> resendCode(String userId) async {
    String lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {"lang": lang, "userId": userId};
    var _data = await DioHelper(context: context).post(url: "/api/v1/ResendCode", body:body);
    return (_data != null);
  }

  Future<String?> aboutApp(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var type = context.read<UserCubit>().state.model.type;
    String url = type=="user"?"/api/v1/AboutUs":"/api/v1/AboutUsForDelegt";
    var _data =
    await DioHelper(context: context,forceRefresh: refresh).get(url: url, body:body);
    if (_data != null) {
      return _data["data"]["aboutUs"];
    } else {
      return null;
    }
  }

  Future<String?> terms(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var type = context.read<UserCubit>().state.model.type;
    String url = type=="user"?"/api/v1/Condtions":"/api/v1/CondtionsForDelegt";
    var _data =
    await DioHelper(context: context,forceRefresh: refresh).get(url: url, body:body);
    if (_data != null) {
      return _data["data"]["condtions"];
    } else {
      return null;
    }
  }

  Future<bool> switchNotify() async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context).post(url : "Client/SwitchNotify", body:body);
    if (_data != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> forgetPassword(String phone) async {
    String lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {
      "phone": "$phone",
      "lang": lang,
    };
    var _data = await DioHelper(context: context)
        .post(url : "/api/v1/ForgetPassword", body:body , showLoader: false);
    if (_data != null) {
      // ExtendedNavigator.of(context).push(Routes.resetPassword,
      //     arguments: ResetPasswordArguments(userId: _data["code"]["user_id"]));
      return true;
    } else {
      return false;
    }
  }

  Future<bool> resetUserPassword(
      String userId, String code, String pass) async {
    String lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {
      "userId": "$userId",
      "code": "$code",
      "newPassword": "$pass",
      "lang": lang,
    };
    var _data = await DioHelper(context: context).get(url: "/api/v1/ChangePasswordByCode", body:body);
    if (_data != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> sendMessage(String? name, String? mail, String? message) async {
    String lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {
      "lang": "$lang",
      "name": "$name",
      "email": "$mail",
      "comment": "$message",
    };
    var type = context.read<UserCubit>().state.model.type;
    String url = type=="user"?"/api/v1/ContactUs":"/api/v1/AddcomplaintsforDeleget";
    var _data =
    await DioHelper(context: context).post(url : url, body:body, showLoader: false);
    if (_data != null) {
      return true;
    } else {
      return false;
    }
  }
}
