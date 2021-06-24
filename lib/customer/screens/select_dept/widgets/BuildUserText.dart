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
            title: tr(context,"welcome"),
            size: 16,
            color: MyColors.black,
          ),
          MyText(
            title: tr(context,"selectDepartment"),
            size: 12,
            color: MyColors.blackOpacity,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
