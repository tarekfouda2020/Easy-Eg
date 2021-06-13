part of 'SelectAddressImports.dart';

class SelectAddress extends StatefulWidget {
  @override
  _SelectAddressState createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  SelectAddressData selectAddressData = new SelectAddressData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                HeaderLogo(),
                BuildHeaderText(),
                BuildSelectAddressForm(),
              ],
            ),
          ),
          DefaultButton(
            title: "تآكيد",
            color: MyColors.white,
            borderColor: MyColors.white,
            textColor: MyColors.primary,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
