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
            title: tr(context,"register"),
            size: 16,
            color: MyColors.black,
          ),
          MyText(
            title: tr(context,"registerOrLoginIfYouHaveAccount"),
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
