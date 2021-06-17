part of 'AddReservationImports.dart';

class AddReservation extends StatefulWidget {
  final Color color;

  const AddReservation({required this.color});

  @override
  _AddReservationState createState() => _AddReservationState();
}

class _AddReservationState extends State<AddReservation> {
  final AddReservationData addReservationData = new AddReservationData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: "بيانات الحجز",
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        color: widget.color,
        child: Column(
          children: [
            BuildFormView(addReservationData: addReservationData),
            DefaultButton(
              title: "ارسال",
              color: widget.color,
              onTap: () => AutoRouter.of(context).push(ReservationSuccessRoute(color: widget.color)),
            )
          ],
        ),
      ),
    );
  }
}
