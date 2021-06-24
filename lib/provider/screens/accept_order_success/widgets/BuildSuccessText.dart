part of 'ReservSuccessWidgetImports.dart';

class BuildSuccessText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          MyText(
            title: tr(context,"orderAccepted"),
            color: MyColors.white,
            size: 14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: MyText(
              title: tr(context,"clientWillBeNotifiedToWatchOrder"),
              color: MyColors.white,
              size: 14,
              fontWeight: FontWeight.w600,

            ),
          ),
        ],
      ),
    );
  }
}
