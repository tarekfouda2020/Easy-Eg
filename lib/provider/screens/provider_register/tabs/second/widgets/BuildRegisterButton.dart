part of 'ConRegisterWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  final ProviderRegisterData registerData;

  const BuildRegisterButton({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoadingButton(
          btnKey: registerData.secondScreenData.btnKey,
          title: tr(context,"continue"),
          onTap: ()=>registerData.secondScreenData.setRegisterProvider(context,registerData),
          color: MyColors.primary,
          textColor: MyColors.white,
          margin: const EdgeInsets.symmetric(horizontal: 20),
        ),
        DefaultButton(
          title: tr(context,"back"),
          onTap: ()=>registerData.goToBackPage(),
          color: MyColors.white,
          textColor: MyColors.primary,
          borderColor: MyColors.primary,
          margin: const EdgeInsets.all(20),
        ),
      ],
    );
  }
}
