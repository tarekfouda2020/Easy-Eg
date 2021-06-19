part of 'InformationImports.dart';


class Information extends StatelessWidget {
  final Color color;
  final ProductDetailsData detailsData;

  const Information({required this.color,required this.detailsData});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        BuildInfoDetails(color: color),
        BuildVideoView(),
        BuildReservationButton(color: color,detailsData: detailsData,),
      ],
    );
  }
}
