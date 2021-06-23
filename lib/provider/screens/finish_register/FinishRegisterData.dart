part of 'FinishRegisterImports.dart';

class FinishRegisterData{
  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

  final GlobalKey<DropdownSearchState<DropDownModel?>> country = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> govern = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> city = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> region = new GlobalKey();

  DropDownModel? countryModel;
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
  onRegionChange(DropDownModel model){
    regionModel = model;
  }

  setRegisterProvider(BuildContext context,ProviderRegisterModel model)async{
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      model.countryId=countryModel!.id.toString();
      model.governorateId=governModel!.id.toString();
      model.regoinId=regionModel!.id.toString();
      model.cityId=countryModel!.id.toString();
      print("=======================>${model.toJson()}");
      await ProviderRepository(context).registerUser(model);
      btnKey.currentState!.animateReverse();
    }
  }

}