part of 'FinsihRegistWidgetImports.dart';

class BuildHeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: MyText(
        title: tr(context,"selectLocationForContinueAndBetterData"),
        color: MyColors.blackOpacity,
        size: 12,
        alien: TextAlign.center,
      ),
    );
  }
}
