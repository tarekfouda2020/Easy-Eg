part of 'RegisterWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  final ProviderRegisterData registerData;
  const BuildRegisterButton({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: registerData.firstScreenData.btnKey,
      title: tr(context,"continue"),
      onTap: ()=>registerData.firstScreenData.setRegisterProvider(context,registerData),
      color: MyColors.primary,
      textColor: MyColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
