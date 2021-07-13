part of 'DetailsWidgetImports.dart';

class BuildReservationButton extends StatelessWidget {
  final Color color;
  final ProductDetailsData detailsData;
  final ProductModel model;

  const BuildReservationButton({required this.color,required this.detailsData,required this.model});
  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr(context,"hallReservation"),
      margin: EdgeInsets.only(bottom: 30,right: 20,left: 20,top: 5),
      color: color,
      onTap: () => detailsData.navigateToReservation(context, color,model),
    );
  }
}

