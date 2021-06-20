part of 'OrderDetailsWidgetImports.dart';

class BuildDetailsBody extends StatelessWidget {
  final Color color;

  const BuildDetailsBody({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildDetailsItem(
                color: color,
                title: "تاريخ الحجز",
                value: "24/03/2022",
              ),
              BuildDetailsItem(
                  color: color, title: "رقم الجوال", value: "01551575332"),
            ],
          ),
        ],
      ),
    );
  }
}
