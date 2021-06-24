part of 'ProviderRepoImports.dart';

class ProviderHttpMethods{
  final BuildContext context;

  ProviderHttpMethods(this.context);

  Future<List<CategoryModel>> getCategories(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/GetCategoriesOfUser", body: body);
    if (_data != null) {
      return List<CategoryModel>.from(
          _data["data"].map((e) => CategoryModel.fromJson(e)));
    } else {
      return [];
    }
  }


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

  Future<List<ProviderOrderModel>> fetchFinishedOrders(bool refresh) async {
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
  Future<List<NotifyModel>> getNotifications(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListOfNotify", body: body);
    if (_data != null) {
      return List<NotifyModel>.from(
          _data["notify"].map((e) => NotifyModel.fromJson(e)));
    } else {
      return [];
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

  Future<bool> removeOffer(int id) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "id":"$id"
    };
    var _data = await DioHelper(context: context).post(url: "/api/v1/DeleteOfferById", body: body);
    return (_data != null) ;
  }

  Future<bool> addOffer(File image) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "img": image
    };
    var _data = await DioHelper(context: context).uploadFile(url: "/api/v1/AddOffer", body: body);
    return (_data != null) ;
  }

  Future<List<ProviderOfferModel>> getOffers(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListOffer", body: body);
    if (_data != null) {
      return List<ProviderOfferModel>.from(
          _data["data"].map((e) => ProviderOfferModel.fromJson(e)));
    } else {
      return [];
    }
  }


}