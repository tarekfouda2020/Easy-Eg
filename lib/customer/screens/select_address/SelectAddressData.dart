part of 'SelectAddressImports.dart';

class SelectAddressData{

  final GlobalKey<DropdownSearchState<DropDownModel?>> country = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> govern = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> city = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> region = new GlobalKey();

   DropDownModel? countryModel;
   DropDownModel? governModel;
   DropDownModel? cityModel;
   DropDownModel? regionModel;

  fetchCountries(BuildContext context)async{
    var data = await CustomerRepository(context).getCountries(false);
    countryModel = data.first;
  }

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

  Future<bool> onBackPressed(bool showBack,BuildContext context) async {
    if (!showBack||context.read<AuthCubit>().state.authorized) {
      SystemNavigator.pop();
      return false;
    }
    return true;
  }

}