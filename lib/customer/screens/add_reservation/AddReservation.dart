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
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: GestureDetector(
        onTap: ()=> FocusScope.of(context).requestFocus(FocusNode()),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [widget.color.withOpacity(.5), MyColors.white],
            begin: Alignment.bottomCenter,
          )),
          child: Column(
            children: [
              BuildFormView(addReservationData: addReservationData),
              DefaultButton(
                title: "ارسال",
                onTap: () => AutoRouter.of(context).push(ReservationSuccessRoute(color: widget.color)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
