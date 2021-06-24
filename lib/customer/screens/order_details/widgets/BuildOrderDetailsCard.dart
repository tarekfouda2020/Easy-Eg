part of 'OrderDetailsWidgetImports.dart';

class BuildOrderDetailsCard extends StatelessWidget {
  final Color color;

  const BuildOrderDetailsCard({required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CachedImage(
            url: "model.logoImg",
            width: 60,
            height: 60,
          ),
          SizedBox(width: 5),
          Container(
            width: MediaQuery.of(context).size.width - 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(title: "model.name", color: MyColors.black, size: 10),
                SizedBox(height: 5),
                MyText(
                    title: "model.providerLocation",
                    color: color.withOpacity(.7),
                    size: 10),
              ],
            ),
          ),
          Column(
            children: [
              MyText(
                  title: tr(context,"orderNum"), color: color.withOpacity(.7), size: 10),
              MyText(title: "${"model.id"}", color: color.withOpacity(.7), size: 10),
            ],
          )
        ],
      ),
    );
  }
}

