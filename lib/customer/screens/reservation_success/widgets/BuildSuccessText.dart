part of 'ReservSuccessWidgetImports.dart';

class BuildSuccessText extends StatelessWidget {
  final int orderId;

  const BuildSuccessText({required this.orderId});
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
            title: "${tr(context,"YourOrderNum")} ${orderId}",
            color: MyColors.white,
            size: 12,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
