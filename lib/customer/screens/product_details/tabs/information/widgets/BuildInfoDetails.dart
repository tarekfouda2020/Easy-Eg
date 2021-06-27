part of 'InformationWidgetImports.dart';

class BuildInfoDetails extends StatelessWidget {
  final Color color;
  final ProductModel model;

  const BuildInfoDetails({required this.color,required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: model.name,
          color: MyColors.black,
          size: 14,
          fontWeight: FontWeight.w600,
        ),
        InkWell(
          onTap: ()=>Utils.navigateToMapWithDirection(lat: model.lat, lng: model.lng, context: context),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.pin_drop,
                  color: color,
                  size: 20,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: MyText(
                    title: model.location,
                    color: color.withOpacity(.8),
                    size: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        MyText(
          title: tr(context,"desc"),
          color: MyColors.black,
          size: 12,
          fontWeight: FontWeight.w700,
        ),
        MyText(
          title: model.info,
          color: MyColors.blackOpacity,
          size: 10,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
