import 'package:base_flutter/customer/models/DropDownModel.dart';
import 'package:base_flutter/customer/models/category.dart';
import 'package:base_flutter/general/blocks/lang_cubit/lang_cubit.dart';
import 'package:base_flutter/general/utilities/dio_helper/DioImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerHttpMethods{

  final BuildContext context;

  CustomerHttpMethods(this.context);

  Future<List<DropDownModel>> getCountries(bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
    };
    var _data =
    await DioHelper(context: context,forceRefresh: refresh).get(url: "/api/v1/ListCountries", body:body);
    if (_data != null) {
      return List<DropDownModel>.from(_data["data"].map((e) => DropDownModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<DropDownModel>> getGovernments(int? countryId,bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idCountry":"$countryId"
    };
    var _data =
    await DioHelper(context: context,forceRefresh: refresh).get(url: "/api/v1/ListGovernorates", body:body);
    if (_data != null) {
      return List<DropDownModel>.from(_data["data"].map((e) => DropDownModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<DropDownModel>> getCities(int? governId,bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idGovernorate":"$governId"
    };
    var _data =
    await DioHelper(context: context,forceRefresh: refresh).get(url: "/api/v1/ListCities", body:body);
    if (_data != null) {
      return List<DropDownModel>.from(_data["data"].map((e) => DropDownModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<DropDownModel>> getRegions(int? cityId,bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idCities":"$cityId"
    };
    var _data =
    await DioHelper(context: context,forceRefresh: refresh).get(url: "/api/v1/ListRegoins", body:body);
    if (_data != null) {
      return List<DropDownModel>.from(_data["data"].map((e) => DropDownModel.fromJson(e)));
    } else {
      return [];
    }
  }

  Future<List<Category>> getCategories(int regionId,bool refresh) async {
    Map<String, dynamic> body = {
      "lang": context.read<LangCubit>().state.locale.languageCode,
      "idRegoin":"$regionId"
    };
    var _data =
    await DioHelper(context: context,forceRefresh: refresh).get(url: "/api/v1/ListCategories", body:body);
    if (_data != null) {
      return List<Category>.from(_data["data"].map((e) => Category.fromJson(e)));
    } else {
      return [];
    }
  }

}