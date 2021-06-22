part of 'InformationImports.dart';


class Information extends StatelessWidget {
  final Color color;
  final ProductDetailsData detailsData;
  final ProductModel model;

  const Information({required this.color,required this.detailsData,required this.model});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        BuildInfoDetails(color: color,model: model,),
        BuildVideoView(link: model.linkVideo,),
        BuildReservationButton(color: color,detailsData: detailsData,model: model),
      ],
    );
  }
}
