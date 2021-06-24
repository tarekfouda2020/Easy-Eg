part of 'ProviderRepoImports.dart';

class ProviderAuthMethods{
  final BuildContext context;

  ProviderAuthMethods(this.context);

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<bool> registerUser(ProviderRegisterModel model) async {
    model.lang = context.read<LangCubit>().state.locale.languageCode;
    model.deviceId = await messaging.getToken();
    var _data = await DioHelper(context: context).post(
      url: "/api/v1/RegisterDeleget",
      body: model.toJson(),
      showLoader: false,
    );
    if (_data != null) {
      AutoRouter.of(context).push(ActiveAccountRoute(userId: _data["data"]["id"]));
      return true;
    }
    return false;
  }

  Future<bool> updateProfile(ProviderRegisterModel model) async {
    model.lang = context.read<LangCubit>().state.locale.languageCode;
    model.deviceId = await messaging.getToken();
    var _data = await DioHelper(context: context).post(
      url: "/api/v1/UpdateAsyncDataDelegt",
      body: model.toJson(),
      showLoader: false,
    );
    if (_data != null) {
      var user = context.read<UserCubit>();
      user.state.model.providerModel=ProviderModel.fromJson(_data["data"]);
      user.onUpdateUserData(user.state.model);
      Utils.saveUserData(user.state.model);
      return true;
    }
    return false;
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