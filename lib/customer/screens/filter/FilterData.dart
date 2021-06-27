part of 'FilterImports.dart';

class FilterData{

  GlobalKey<FormState> formKey = new GlobalKey();

  final GlobalKey<DropdownSearchState<DropDownModel?>> country = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> govern = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> city = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> region = new GlobalKey();
  final GlobalKey<DropdownSearchState<CategoryModel?>> cat = new GlobalKey();
  final GlobalKey<DropdownSearchState<SubCategoryModel?>> subCat = new GlobalKey();

  DropDownModel? countryModel;
  DropDownModel? governModel;
  DropDownModel? cityModel;
  DropDownModel? regionModel;
  CategoryModel? catModel;
  SubCategoryModel? subModel;

  fetchCountries(BuildContext context)async{
    var data = await CustomerRepository(context).getCountries(false);
    countryModel = data.first;
  }

  onCountryChange(DropDownModel model){
    countryModel = model;
    govern.currentState!.changeSelectedItem(null);
    city.currentState!.changeSelectedItem(null);
    region.currentState!.changeSelectedItem(null);
    cat.currentState!.changeSelectedItem(null);
    subCat.currentState!.changeSelectedItem(null);
  }
  onGovernChange(DropDownModel model){
    governModel = model;
    city.currentState!.changeSelectedItem(null);
    region.currentState!.changeSelectedItem(null);
    cat.currentState!.changeSelectedItem(null);
    subCat.currentState!.changeSelectedItem(null);
  }
  onCityChange(DropDownModel model){
    cityModel = model;
    region.currentState!.changeSelectedItem(null);
    cat.currentState!.changeSelectedItem(null);
    subCat.currentState!.changeSelectedItem(null);
  }
  onRegionChange(DropDownModel model){
    regionModel = model;
    cat.currentState!.changeSelectedItem(null);
    subCat.currentState!.changeSelectedItem(null);
  }
  onCategoryChange(CategoryModel model){
    catModel = model;
    subCat.currentState!.changeSelectedItem(null);
  }
  onSubCategoryChange(SubCategoryModel model){
    subModel = model;
  }

  setFilterSearch(BuildContext context){
    if (formKey.currentState!.validate()) {
      AutoRouter.of(context).pop(subModel?.id);
    }
  }

}