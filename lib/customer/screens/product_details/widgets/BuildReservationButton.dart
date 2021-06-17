part of 'DetailsWidgetImports.dart';

class BuildReservationButton extends StatelessWidget {
  final Color color;

  const BuildReservationButton({required this.color});
  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: "حجز القاعة",
      margin: EdgeInsets.only(bottom: 30),
      color: color,
      onTap: () => AutoRouter.of(context).push(AddReservationRoute(color: color)),
    );
  }
}

