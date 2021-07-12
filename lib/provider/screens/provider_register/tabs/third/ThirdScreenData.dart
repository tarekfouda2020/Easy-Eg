part of 'ThirdScreenImports.dart';

class ThirdScreenData{
  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();
  final GenericBloc<List<CategoryModel>> catsCubit = new GenericBloc([]);


  final GlobalKey<DropdownSearchState<DropDownModel?>> country = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> govern = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> city = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> region = new GlobalKey();

  final GenericBloc<int> catCubit = new GenericBloc(0);
  final GenericBloc<List<SubCategoryModel>> subCatsCubit = new GenericBloc([]);

  DropDownModel countryModel=DropDownModel(id: 1 , name: "masr");
  DropDownModel? governModel;
  DropDownModel? cityModel;
  DropDownModel? regionModel;

  onCountryChange(DropDownModel model){
    countryModel = model;
    govern.currentState!.changeSelectedItem(null);
    city.currentState!.changeSelectedItem(null);
    region.currentState!.changeSelectedItem(null);
  }
  onGovernChange(DropDownModel model){
    governModel = model;
    city.currentState!.changeSelectedItem(null);
    region.currentState!.changeSelectedItem(null);
  }
  onCityChange(DropDownModel model){
    cityModel = model;
    region.currentState!.changeSelectedItem(null);
  }
  onRegionChange(DropDownModel? model,BuildContext context){
    if (model!=null) {
      regionModel = model;
      fetchCategoriesData(context);
    } else{
      catsCubit.onUpdateData([]);
    }

  }

  fetchCategoriesData(BuildContext context) async {
    var data = await CustomerRepository(context)
        .getCategories(regionModel?.id??0, cityModel?.id??0, governModel?.id??0, false);
    catsCubit.onUpdateData(data);
    if (data.length>0) {
      onCategorySelected(context,data.first);
    }
  }

  onCategorySelected(BuildContext context, CategoryModel model){
    catCubit.onUpdateData(model.id);
    subCatsCubit.onUpdateData(model.subCategory);
  }

  setSelectSubCat(int index){
    subCatsCubit.state.data[index].selected=!subCatsCubit.state.data[index].selected;
    subCatsCubit.onUpdateData(subCatsCubit.state.data);
  }

  setRegisterProvider(BuildContext context,ProviderRegisterModel model)async{
    if (formKey.currentState!.validate()) {
      var subCats = subCatsCubit.state.data.where((element) => element.selected).
      map((e) => e.id.toString()).toList();
      if (subCats.length==0) {
        LoadingDialog.showSimpleToast(tr(context,"PlzSelectYourServices"));
        return;
      }
      btnKey.currentState!.animateForward();
      model.countryId=countryModel.id.toString();
      model.governorateId=governModel!.id.toString();
      model.regoinId=regionModel!.id.toString();
      model.cityId=cityModel?.id.toString();
      model.idsSubCat= json.encode(subCats);

      await ProviderRepository(context).registerUser(model);
      btnKey.currentState!.animateReverse();
    }
  }
}