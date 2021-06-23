part of 'RegisterWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  final ProviderRegisterData registerData;

  const BuildRegisterButton({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: registerData.btnKey,
      title: tr(context,"continue"),
      onTap: ()=>registerData.setRegisterProvider(context),
      color: MyColors.primary,
      textColor: MyColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
