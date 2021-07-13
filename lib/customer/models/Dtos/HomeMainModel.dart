import '../CategoryModel.dart';

class HomeMainModel {
  int? regionId;
  int? cityId;
  int? governorateId;
  CategoryModel? category;

  HomeMainModel({
    this.regionId=0,
    this.cityId=0,
    this.governorateId=0,
    this.category
  });
}
