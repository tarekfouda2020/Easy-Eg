part of 'CustomerRepoImports.dart';


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


  Future<bool> contactUs(String name, String mail, String msg) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "userName":name,
      "email":mail,
      "msg":msg,
    };
    var _data = await DioHelper(context: context).post(
      url: "/api/v1/Addcomplaints",
      body: body,
      showLoader: false,
    );
    return (_data != null);
  }

  Future<bool> changeLanguage(String lang) async {
    Map<String, dynamic> body = {
      "lang": lang,
    };
    var _data = await DioHelper(context: context).post(
      url: "/api/v1/ChangeLanguage",
      body: body,
    );
    return (_data != null);
  }

  Future<bool> changePassword(String oldPass,String newPass) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "newPassword":newPass,
      "oldPassword":oldPass
    };
    var _data = await DioHelper(context: context).uploadFile(
      url: "/api/v1/ChangePassward",
      body: body,
      showLoader: false,
    );
    return (_data != null);
  }

  Future<List<QuestionModel>> getRepeatedQuestions(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListQuestions", body: body);
    if (_data != null) {
      return List<QuestionModel>.from(_data["questions"].map((e) => QuestionModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<SocialModel>> getSocialLinks(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListSocialMedia", body: body);
    if (_data != null) {
      return List<SocialModel>.from(_data["socialMedia"].map((e) => SocialModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<bool> logout() async {
    String? deviceId = await messaging.getToken();
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "deviceId":deviceId
    };
    var _data = await DioHelper(context: context).post(
      url: "/api/v1/logout",
      body: body,
    );
    if (_data != null) {
      EasyLoading.dismiss().then((value){
        Utils.clearSavedData();
        GlobalState.instance.set("token", "");
        Phoenix.rebirth(context);
      });
      return true;
    } else {
      return false;
    }
  }


}
