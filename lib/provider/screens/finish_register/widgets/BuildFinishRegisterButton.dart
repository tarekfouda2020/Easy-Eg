part of 'FinsihRegistWidgetImports.dart';

class BuildFinishRegisterButton extends StatelessWidget {
  final FinishRegisterData registerData;
  final ProviderRegisterModel model;
  const BuildFinishRegisterButton({required this.registerData, required this.model});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: registerData.btnKey,
      title: "تسجيل",
      onTap: ()=>registerData.setRegisterProvider(context,model),
      color: MyColors.primary,
      textColor: MyColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
