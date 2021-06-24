part of 'ReservSuccessWidgetImports.dart';

class BuildSuccessText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyText(
            title: tr(context,"sentSuccessfully"),
            color: MyColors.white,
            size: 14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: MyText(
              title: tr(context,"providerWillReplySoon"),
              color: MyColors.white,
              size: 14,
              fontWeight: FontWeight.w600,

            ),
          ),
          MyText(
            title: tr(context,"YourOrderNum1234"),
            color: MyColors.white,
            size: 12,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
