part of 'FinsihRegistWidgetImports.dart';

class BuildLocationForm extends StatelessWidget {
  final FinishRegisterData finishRegisterData;

  const BuildLocationForm({required this.finishRegisterData});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Form(
        child: Column(
          children: [
            DropdownTextField<DropDownModel>(
              label: "الدولة",
              dropKey: finishRegisterData.country,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
              validate: (DropDownModel value) => value.validateDropDown(context),
              onChange: (DropDownModel model)=> finishRegisterData.onCountryChange(model),
              finData: (filter) async => await CustomerRepository(context).getCountries(false),
            ),
            DropdownTextField<DropDownModel>(
              label: "المحافظة",
              dropKey: finishRegisterData.govern,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
              validate: (DropDownModel value) => value.validateDropDown(context),
              onChange: (DropDownModel model)=> finishRegisterData.onGovernChange(model),
              finData: (filter) async => await CustomerRepository(context).getGovernments(finishRegisterData.countryModel?.id,false),
            ),
            DropdownTextField<DropDownModel>(
              label: "المدينة",
              dropKey: finishRegisterData.city,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
              validate: (DropDownModel value) => value.validateDropDown(context),
              onChange: (DropDownModel model)=> finishRegisterData.onCityChange(model),
              finData: (filter) async => await CustomerRepository(context).getCities(finishRegisterData.governModel?.id,false),
            ),
            DropdownTextField<DropDownModel>(
              label: "المنطقة",
              dropKey: finishRegisterData.region,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
              validate: (DropDownModel value) => value.validateDropDown(context),
              onChange: (DropDownModel model)=> finishRegisterData.onRegionChange(model),
              finData: (filter) async => await CustomerRepository(context).getRegions(finishRegisterData.cityModel?.id,false),
            ),
          ],
        ),
      ),
    );
  }
}
