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


}