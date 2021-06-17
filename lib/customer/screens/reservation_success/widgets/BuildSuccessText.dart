part of 'ReservSuccessWidgetImports.dart';

class BuildSuccessText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyText(
            title: "تم ارسال طلبك بنجاح",
            color: MyColors.white,
            size: 14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: MyText(
              title: "سيتم الرد عليكم من قبل مقدم الخدمة قريبا",
              color: MyColors.white,
              size: 14,
              fontWeight: FontWeight.w600,

            ),
          ),
          MyText(
            title: "ورقم الطلب الخاص بك 1234",
            color: MyColors.white,
            size: 12,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
