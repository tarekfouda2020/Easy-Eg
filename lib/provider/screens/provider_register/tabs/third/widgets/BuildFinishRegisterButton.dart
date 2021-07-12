part of 'FinsihRegistWidgetImports.dart';

class BuildFinishRegisterButton extends StatelessWidget {
  final ProviderRegisterData registerData;
  const BuildFinishRegisterButton({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoadingButton(
          btnKey: registerData.thirdScreenData.btnKey,
          title: tr(context,"register"),
          onTap: ()=>registerData.thirdScreenData.setRegisterProvider(context,registerData.model),
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
