part of 'ProviderRepoImports.dart';

class ProviderHttpMethods{
  final BuildContext context;

  ProviderHttpMethods(this.context);


  Future<List<ProviderOrderModel>> getNewOrders(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListNewOrder", body: body);
    if (_data != null) {
      return List<ProviderOrderModel>.from(
          _data["data"].map((e) => ProviderOrderModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<ProviderOrderModel>> getCurrentOrders(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListCurrentOrder", body: body);
    if (_data != null) {
      return List<ProviderOrderModel>.from(
          _data["data"].map((e) => ProviderOrderModel.fromJson(e)));
    } else {
      return [];
    }
  }



}