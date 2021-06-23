part of 'FinsihRegistWidgetImports.dart';

class BuildFinishRegisterButton extends StatelessWidget {
  final FinishRegisterData registerData;

  const BuildFinishRegisterButton({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: registerData.btnKey,
      title: "تسجيل",
      onTap: ()=>registerData.setRegisterProvider(context),
      color: MyColors.primary,
      textColor: MyColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
