part of 'ConRegisterWidgetsImports.dart';

class BuildText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: MyText(
        title: tr(context,"plzCompleteData"),
        size: 16,
        color: MyColors.primary,
      ),
    );
  }
}
