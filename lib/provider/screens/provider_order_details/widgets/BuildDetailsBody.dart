part of 'OrderDetailsWidgetImports.dart';

class BuildDetailsBody extends StatelessWidget {
  final Color color;
  final ProviderOrderModel model;

  const BuildDetailsBody({required this.color, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildDetailsItem(
            color: color,
            title: tr(context,"reserveDate"),
            value: model.date,
          ),
          SizedBox(height: 20),
          BuildDetailsItem(
            color: color,
            title: tr(context,"phone"),
            value: model.phone,
            onTap: ()=> Utils.callPhone(phone: model.phone),
          ),
        ],
      ),
    );
  }
}
