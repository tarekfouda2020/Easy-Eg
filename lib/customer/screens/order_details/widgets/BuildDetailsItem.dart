part of 'OrderDetailsWidgetImports.dart';

class BuildDetailsItem extends StatelessWidget {
  final Color color;
  final String title;
  final String value;

  const BuildDetailsItem(
      {required this.color, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(title: title, color: color, size: 12),
          SizedBox(
            width: 25,
            child: Divider(
              color: color,
              height: 15,
              thickness: 3,
            ),
          ),
          MyText(
            title: value,
            color: MyColors.black,
            size: 11,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
