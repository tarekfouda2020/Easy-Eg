part of 'OrderDetailsWidgetImports.dart';

class BuildDetailsBody extends StatelessWidget {
  final Color color;
  final OrderModel model;

  const BuildDetailsBody({required this.color, required this.model});

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
                  color: color, title: tr(context,"clientName"), value: model.name),
              BuildDetailsItem(
                  color: color, title:tr(context,"phone"), value: model.phone),
            ],
          ),
          SizedBox(height: 30),
          BuildDetailsItem(
            color: color,
            title: tr(context,"reserveDate"),
            value: model.date,
          ),
          Container(
            margin: EdgeInsets.only(top: 100, bottom: 20),
            alignment: Alignment.center,
            child: MyText(
              title:tr(context,"waitReserveConfirm"),
              color: MyColors.black,
              size: 14,
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}
