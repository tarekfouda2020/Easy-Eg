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

  Future<ProviderOrderModel?> getOrderDetails(int id, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "orderId":"$id"
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/OrderInfo", body: body);
    if (_data != null) {
      return  ProviderOrderModel.fromJson(_data["data"]);
    } else {
      return null;
    }
  }

  Future<bool> acceptOrder(int id) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "orderId":"$id"
    };
    var _data = await DioHelper(context: context).post(url: "/api/v1/AcceptOrder", body: body);
    return (_data != null) ;
  }

  Future<bool> refuseOrder(int id) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "orderId":"$id"
    };
    var _data = await DioHelper(context: context).post(url: "/api/v1/RefuseOrder", body: body);
    return (_data != null) ;
  }

  Future<bool> finishOrder(int id) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "orderId":"$id"
    };
    var _data = await DioHelper(context: context).post(url: "/api/v1/EndedOrder", body: body);
    return (_data != null) ;
  }



}