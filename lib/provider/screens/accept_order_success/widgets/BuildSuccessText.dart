part of 'ReservSuccessWidgetImports.dart';

class BuildSuccessText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          MyText(
            title: "تم قبول الطلب بنجاح",
            color: MyColors.white,
            size: 14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: MyText(
              title: "سيتم اشعار المستخدم لمتابعة الطلب",
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
