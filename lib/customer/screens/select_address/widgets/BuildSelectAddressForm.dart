part of 'SelectAddressWidgetImports.dart';

class BuildSelectAddressForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Form(
        child: Column(
          children: [
            DropdownTextField<DropDownModel>(
              label: "المحافظة",
              data: [DropDownModel("Cairo",1)],
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
            ),
            DropdownTextField<DropDownModel>(
              label: "المدينة",
              data: [DropDownModel("Mansoura",1)],
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
            ),
            DropdownTextField<DropDownModel>(
              label: "المنطقة",
              data: [DropDownModel("Aga",1)],
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              showSelectedItem: false,
              iconsColor: MyColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
