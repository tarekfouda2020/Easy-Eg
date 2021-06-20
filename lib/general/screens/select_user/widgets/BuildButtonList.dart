part of 'SelectUserWidgetsImports.dart';


class BuildButtonList extends StatelessWidget {
  final SelectUserData selectUserData;

  const BuildButtonList({required this.selectUserData});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          title: "مستخدم",
          onTap: () => selectUserData.setUserType(context, "user"),
          margin: const EdgeInsets.symmetric(vertical: 15),
          color: MyColors.primary,
        ),
        DefaultButton(
          title: "مقدم خدمة",
          onTap: () => selectUserData.setUserType(context, "provider"),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          color: MyColors.primary,
        ),
      ],
    );
  }
}
