part of 'ConRegisterWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  final CompleteRegisterData registerData;
  final ProviderRegisterModel model;

  const BuildRegisterButton({required this.registerData, required this.model});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: registerData.btnKey,
      title: tr(context,"continue"),
      onTap: ()=>registerData.setRegisterProvider(context,model),
      color: MyColors.primary,
      textColor: MyColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
