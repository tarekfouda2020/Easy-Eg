import 'package:base_flutter/customer/models/DropDownModel.dart';
import 'package:base_flutter/customer/models/CategoryModel.dart';
import 'package:base_flutter/customer/models/Dtos/AddCompetitionModel.dart';
import 'package:base_flutter/customer/models/Dtos/AddReservationModel.dart';
import 'package:base_flutter/customer/models/offer_model.dart';
import 'package:base_flutter/customer/models/order_model.dart';
import 'package:base_flutter/customer/models/product_model.dart';
import 'package:base_flutter/general/blocks/lang_cubit/lang_cubit.dart';
import 'package:base_flutter/general/utilities/dio_helper/DioImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  Future<List<CategoryModel>> getCategories(int regionId, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idRegoin": "$regionId"
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

  Future<List<ProductModel>> getProducts(
      int subCatId, int page, bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idCat": "$subCatId",
      "currentPage": "$page",
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

  Future<bool> setAddToFavourite(String id) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "providerId": "$id",
    };
    var _data = await DioHelper(context: context)
        .post(url: "/api/v1/AddOrRemoveFavourite", body: body);
    return (_data != null);
  }

  Future<bool> addOrder(AddReservationModel model) async {
    model.lang = context.read<LangCubit>().state.locale.languageCode;
    var _data = await DioHelper(context: context).post(
      url: "/api/v1/AddOrder",
      body: model.toJson(),
      showLoader: false,
    );
    return (_data != null);
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
      "orderId":"$id"
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/GetOrderInfoUser", body: body);
    if (_data != null) {
      return  OrderModel.fromJson(_data["data"]);
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

  Future<DropDownModel?> getCompetitions(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data = await DioHelper(context: context, forceRefresh: refresh)
        .get(url: "/api/v1/GetCompetitions", body: body);
    if (_data != null) {
      return DropDownModel.fromJson(_data["data"]);
    } else {
      return null;
    }
  }


}
