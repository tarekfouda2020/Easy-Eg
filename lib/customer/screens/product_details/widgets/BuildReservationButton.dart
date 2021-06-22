part of 'DetailsWidgetImports.dart';

class BuildReservationButton extends StatelessWidget {
  final Color color;
  final ProductDetailsData detailsData;
  final ProductModel model;

  const BuildReservationButton({required this.color,required this.detailsData,required this.model});
  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: "حجز القاعة",
      margin: EdgeInsets.only(bottom: 30),
      color: color,
      onTap: () => detailsData.navigateToReservation(context, color,model),
    );
  }
}

