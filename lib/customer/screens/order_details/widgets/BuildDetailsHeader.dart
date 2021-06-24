part of 'OrderDetailsWidgetImports.dart';

class BuildDetailsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: MyColors.greyWhite,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          MyText(
            title:tr(context,"reserveData"),
            color: MyColors.black,
            size: 12,
          ),
        ],
      ),
    );
  }
}
