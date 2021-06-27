part of 'SelectAddressWidgetImports.dart';

class BuildSelectAddressForm extends StatelessWidget {
  final SelectAddressData selectAddressData;

  const BuildSelectAddressForm({required this.selectAddressData});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Form(
        child: Column(
          children: [
            // DropdownTextField<DropDownModel>(
            //   label: tr(context,"country"),
            //   dropKey: selectAddressData.country,
            //   margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            //   showSelectedItem: false,
            //   iconsColor: MyColors.white,
            //   validate: (DropDownModel value) => value.validateDropDown(context),
            //   onChange: (DropDownModel model)=> selectAddressData.onCountryChange(model),
            //   finData: (filter) async => await CustomerRepository(context).getCountries(false),
            // ),
            DropdownTextField<DropDownModel>(
              label: tr(context,"government"),
              dropKey: selectAddressData.govern,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
              validate: (DropDownModel value) => value.validateDropDown(context),
              onChange: (DropDownModel model)=> selectAddressData.onGovernChange(model),
              finData: (filter) async => await CustomerRepository(context).getGovernments(selectAddressData.countryModel?.id,false),
            ),
            DropdownTextField<DropDownModel>(
              label: tr(context,"city"),
              dropKey: selectAddressData.city,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
              validate: (DropDownModel value) => value.validateDropDown(context),
              onChange: (DropDownModel model)=> selectAddressData.onCityChange(model),
              finData: (filter) async => await CustomerRepository(context).getCities(selectAddressData.governModel?.id,false),
            ),
            DropdownTextField<DropDownModel>(
              label:tr(context,"region"),
              dropKey: selectAddressData.region,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
              validate: (DropDownModel value) => value.validateDropDown(context),
              onChange: (DropDownModel model)=> selectAddressData.onRegionChange(model),
              finData: (filter) async => await CustomerRepository(context).getRegions(selectAddressData.cityModel?.id,false),
            ),
          ],
        ),
      ),
    );
  }
}
