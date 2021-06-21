import 'package:base_flutter/customer/models/DropDownModel.dart';
import 'package:flutter/material.dart';
import 'CustomerHttpMethods.dart';

class CustomerRepository{

  late BuildContext _context;
  late CustomerHttpMethods _customerHttpMethods;
  CustomerRepository(BuildContext context) {
    _context = context;
    _customerHttpMethods = new CustomerHttpMethods(_context);
  }

  Future<List<DropDownModel>> getCountries(bool refresh)async =>
      _customerHttpMethods.getCountries(refresh);

  Future<List<DropDownModel>> getGovernments(int? countryId,bool refresh)async =>
      _customerHttpMethods.getGovernments(countryId,refresh);

  Future<List<DropDownModel>> getCities(int? governId,bool refresh)async =>
      _customerHttpMethods.getCities(governId,refresh);

  Future<List<DropDownModel>> getRegions(int? cityId,bool refresh)=>
      _customerHttpMethods.getRegions(cityId, refresh);




}