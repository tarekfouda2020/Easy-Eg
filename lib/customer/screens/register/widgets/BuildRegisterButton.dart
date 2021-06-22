part of 'RegisterWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  final RegisterData registerData;

  const BuildRegisterButton({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: registerData.btnKey,
      title: tr(context,"continue"),
      onTap: ()=>registerData.setRegisterCustomer(context),
      color: MyColors.primary,
      textColor: MyColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
