part of 'SelectDeptWidgetsImports.dart';

class BuildButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          title: "الفرح",
          onTap: () => AutoRouter.of(context).push(HomeRoute(color: Color(0xff79617f))),
          margin: const EdgeInsets.symmetric(vertical: 15),
          color: MyColors.primary,
        ),
        DefaultButton(
          title: "المحلات",
          onTap: () => AutoRouter.of(context).push(HomeRoute(color: Color(0xff286a93))),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          color: MyColors.primary,
        ),
      ],
    );
  }
}
