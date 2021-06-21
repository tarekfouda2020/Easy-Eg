part of 'SelectUserWidgetsImports.dart';

class BuildUserText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyText(
            title: "التسجيل",
            size: 16,
            color: MyColors.black,
          ),
          MyText(
            title: "يمكنك عمل حساب جديد او تسجيل الدخول اذا كان لديك حساب .",
            size: 12,
            color: MyColors.blackOpacity,
            fontWeight: FontWeight.w500,
            alien: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
