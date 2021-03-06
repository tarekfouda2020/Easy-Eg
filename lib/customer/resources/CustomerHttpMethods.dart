part of 'CustomerRepoImports.dart';

class CustomerHttpMethods {
  final BuildContext context;

  CustomerHttpMethods(this.context);

  Future<List<DropDownModel>> getCountries(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListCountries", body: body);
    if (_data != null) {
      return List<DropDownModel>.from(
          _data["data"].map((e) => DropDownModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<DropDownModel>> getGovernments(
      int? countryId, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idCountry": "$countryId"
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListGovernorates", body: body);
    if (_data != null) {
      return List<DropDownModel>.from(
          _data["data"].map((e) => DropDownModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<DropDownModel>> getCities(int? governId, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idGovernorate": "$governId"
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListCities", body: body);
    if (_data != null) {
      return List<DropDownModel>.from(
          _data["data"].map((e) => DropDownModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<DropDownModel>> getRegions(int? cityId, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idCities": "$cityId"
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListRegoins", body: body);
    if (_data != null) {
      return List<DropDownModel>.from(
          _data["data"].map((e) => DropDownModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<CategoryModel>> getCategories(
      HomeMainModel model, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idRegoin": "${model.regionId}",
      "cityId": "${model.cityId}",
      "GovernorateId": "${model.governorateId}"
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListCategories", body: body);
    if (_data != null) {
      return List<CategoryModel>.from(
          _data["data"].map((e) => CategoryModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<SubCategoryModel>> getSubCategories(
      HomeMainModel model, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idRegoin": "${model.regionId}",
      "cityId": "${model.cityId}",
      "GovernorateId": "${model.governorateId}",
      "catId": "${model.category?.id ?? 0}"
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListSubCategories", body: body);
    if (_data != null) {
      return List<SubCategoryModel>.from(
          _data["data"].map((e) => SubCategoryModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<ProductModel>> getProducts(
      int page, String? text, HomeMainModel model, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idCat": "${model.subCatId}",
      "currentPage": "$page",
      "text": text,
      "idRegoin": "${model.regionId}",
      "cityId": "${model.cityId}",
      "GovernorateId": "${model.governorateId}",
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListProviders", body: body);
    if (_data != null) {
      return List<ProductModel>.from(
          _data["data"].map((e) => ProductModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<ProductModel>> getMapProducts(int subCatId, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "catId": "$subCatId",
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ShowProvidersInMap", body: body);
    if (_data != null) {
      return List<ProductModel>.from(
          _data["data"].map((e) => ProductModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<bool> setAddToFavourite(String id) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "providerId": "$id",
    };
    var _data = await DioHelper(context: context)
        .post(url: "/api/v1/AddOrRemoveFavourite", body: body);
    return (_data != null);
  }

  Future<int> addOrder(AddReservationModel model) async {
    model.lang = context.read<LangCubit>().state.locale.languageCode;
    var _data = await DioHelper(context: context).post(
      url: "/api/v1/AddOrder",
      body: model.toJson(),
      showLoader: false,
    );
    if (_data != null) {
      return _data["orderId"];
    } else {
      return 0;
    }
  }

  Future<bool> addCompetition(AddCompetitionModel model) async {
    model.lang = context.read<LangCubit>().state.locale.languageCode;
    var _data = await DioHelper(context: context).post(
      url: "/api/v1/AddCompetitions",
      body: model.toJson(),
      showLoader: false,
    );
    return (_data != null);
  }

  Future<List<ProductModel>> getFavouriteProducts(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListFavourite", body: body);
    if (_data != null) {
      return List<ProductModel>.from(
          _data["listFavourite"].map((e) => ProductModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<OrderModel>> getNewOrders(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListNewOrderUser", body: body);
    if (_data != null) {
      return List<OrderModel>.from(
          _data["data"].map((e) => OrderModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<OrderModel>> getCurrentOrders(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListCurrentOrderUser", body: body);
    if (_data != null) {
      return List<OrderModel>.from(
          _data["data"].map((e) => OrderModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<OrderModel?> getOrderDetails(int id, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "orderId": "$id"
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/GetOrderInfoUser", body: body);
    if (_data != null) {
      return OrderModel.fromJson(_data["data"]);
    } else {
      return null;
    }
  }

  Future<List<OfferModel>> getOffers(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListOffers", body: body);
    if (_data != null) {
      return List<OfferModel>.from(
          _data["data"].map((e) => OfferModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<DropDownModel?> getCompetitions(int id, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "GovernorateId": "$id"
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/GetCompetitions", body: body);
    if (_data != null) {
      return _data["data"] == null
          ? null
          : DropDownModel.fromJson(_data["data"]);
    } else {
      return null;
    }
  }

  Future<List<CompetitionModel>> getHistoryCompetitions(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/ListHistoryCompetitions", body: body);
    if (_data != null) {
      return List<CompetitionModel>.from(
          _data["data"].map((e) => CompetitionModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<MessageModel>> getChatMessages(
      int orderId, int pageNumber) async {
    var lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {
      "lang": lang,
      "orderId": orderId,
      "pageNumber": pageNumber
    };
    var _data = await DioHelper(context: context)
        .get(url: "/api/v1/ListMessagesUser", body: body);
    if (_data != null) {
      return List<MessageModel>.from(
          _data["data"].map((e) => MessageModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<ConversationModel>> getConversations(bool refresh) async {
    var lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {
      "lang": lang,
    };
    var _data = await DioHelper(context: context)
        .get(url: "/api/v1/ListChatUsers", body: body);
    if (_data != null) {
      return List<ConversationModel>.from(
          _data["data"].map((e) => ConversationModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<ChampionDetailsModel?> getChampionDetails(int championId) async {
    var lang = context.read<LangCubit>().state.locale.languageCode;
    Map<String, dynamic> body = {
      "lang": lang,
      "competitionId": championId,
    };
    var _data = await DioHelper(context: context)
        .get(url: "/api/v1/GetCompetitionInfoById", body: body);
    if (_data != null) {
      return ChampionDetailsModel.fromJson(_data["data"]);
    } else {
      return null;
    }
  }
}
