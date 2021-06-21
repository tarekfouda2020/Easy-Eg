part of 'SelectUserWidgetsImports.dart';

class BuildButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          title: "تسجيل الدخول",
          onTap: () => AutoRouter.of(context).push(LoginRoute()),
          margin: const EdgeInsets.symmetric(vertical: 15),
        ),
        DefaultButton(
          title: "مستخدم جديد",
          onTap: () => AutoRouter.of(context).push(RegisterRoute()),
          margin: EdgeInsets.zero,
        ),
        DefaultButton(
          title: "المساعدة",
          onTap: (){},
          margin: const EdgeInsets.symmetric(vertical: 15),
        ),
      ],
    );
  }
}
