import 'package:base_flutter/customer/models/DropDownModel.dart';
import 'package:base_flutter/customer/models/CategoryModel.dart';
import 'package:base_flutter/customer/models/product_model.dart';
import 'package:flutter/material.dart';
import 'CustomerHttpMethods.dart';

class CustomerRepository{

  late BuildContext _context;
  late CustomerHttpMethods _customerHttpMethods;
  CustomerRepository(BuildContext context) {
    _context = context;
    _customerHttpMethods = new CustomerHttpMethods(_context);
  }

  Future<List<DropDownModel>> getCountries(bool refresh) =>
      _customerHttpMethods.getCountries(refresh);

  Future<List<DropDownModel>> getGovernments(int? countryId,bool refresh) =>
      _customerHttpMethods.getGovernments(countryId,refresh);

  Future<List<DropDownModel>> getCities(int? governId,bool refresh) =>
      _customerHttpMethods.getCities(governId,refresh);

  Future<List<DropDownModel>> getRegions(int? cityId,bool refresh)=>
      _customerHttpMethods.getRegions(cityId, refresh);

  Future<List<CategoryModel>> getCategories(int regionId,bool refresh)=>
      _customerHttpMethods.getCategories(regionId, refresh);

  Future<List<ProductModel>> getProducts(int subCatId,int page,bool refresh)=>
      _customerHttpMethods.getProducts(subCatId, page, refresh);

  Future<bool> setAddToFavourite(String id)=> _customerHttpMethods.setAddToFavourite(id);

}