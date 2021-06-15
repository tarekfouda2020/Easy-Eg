part of 'InformationWidgetImports.dart';

class BuildInfoDetails extends StatelessWidget {
  final Color color;

  const BuildInfoDetails({required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: "اسم القاعة",
          color: MyColors.black,
          size: 14,
          fontWeight: FontWeight.w600,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Icon(
                Icons.pin_drop,
                color: color,
                size: 20,
              ),
              SizedBox(width: 5),
              MyText(
                title: "مصر - المنصورة - برج السوسن",
                color: color.withOpacity(.8),
                size: 10,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        MyText(
          title: "الوصف",
          color: MyColors.black,
          size: 12,
          fontWeight: FontWeight.w700,
        ),
        MyText(
          title: "هذا النص يمكن استبدالة "*8,
          color: MyColors.blackOpacity,
          size: 10,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
