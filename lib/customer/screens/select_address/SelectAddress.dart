part of 'SelectAddressImports.dart';

class SelectAddress extends StatefulWidget {
  final bool showBack;

  const SelectAddress({this.showBack = true});
  @override
  _SelectAddressState createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  SelectAddressData selectAddressData = new SelectAddressData();


  @override
  void initState() {
    GlobalNotification.instance.setupNotification(context);
    selectAddressData.fetchCountries(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: AuthScaffold(
        child: Column(
          children: [
            Flexible(
              child: ListView(
                children: [
                  HeaderLogo(haveBack: widget.showBack,),
                  BuildHeaderText(),
                  BuildSelectAddressForm(selectAddressData: selectAddressData),
                ],
              ),
            ),
            DefaultButton(
            title: tr(context,"confirm"),
              color: MyColors.white,
              borderColor: MyColors.white,
              textColor: MyColors.primary,
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
              onTap: ()=> AutoRouter.of(context).push(SelectDeptRoute(regionId: selectAddressData.regionModel?.id??0)),
            ),
          ],
        ),
      ),
      onWillPop: () async => selectAddressData.onBackPressed(widget.showBack),
    );
  }
}
