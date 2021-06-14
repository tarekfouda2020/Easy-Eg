part of 'SelectDeptWidgetsImports.dart';

class BuildUserText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyText(
            title: "مرحبا بك",
            size: 16,
            color: MyColors.black,
          ),
          MyText(
            title: "حدد القسم المراد الدخول علية ",
            size: 12,
            color: MyColors.blackOpacity,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
