part of 'SelectUserWidgetsImports.dart';

class BuildButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          title: "مستخدم",
          onTap: () => AutoRouter.of(context).push(SelectAddressRoute()),
          margin: const EdgeInsets.symmetric(vertical: 15),
          color: MyColors.primary,
        ),
        DefaultButton(
          title: "مقدم خدمة",
          onTap: () => AutoRouter.of(context).push(LoginRoute()),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          color: MyColors.white,
          borderColor: MyColors.primary,
          textColor: MyColors.primary,
        ),
      ],
    );
  }
}
