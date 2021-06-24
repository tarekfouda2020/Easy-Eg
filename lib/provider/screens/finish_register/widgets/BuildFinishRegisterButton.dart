part of 'FinsihRegistWidgetImports.dart';

class BuildFinishRegisterButton extends StatelessWidget {
  final FinishRegisterData registerData;
  final ProviderRegisterModel model;
  const BuildFinishRegisterButton({required this.registerData, required this.model});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: registerData.btnKey,
      title: tr(context,"register"),
      onTap: ()=>registerData.setRegisterProvider(context,model),
      color: MyColors.primary,
      textColor: MyColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    );
  }
}
