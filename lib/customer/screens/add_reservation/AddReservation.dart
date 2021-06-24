part of 'AddReservationImports.dart';

class AddReservation extends StatefulWidget {
  final Color color;
  final ProductModel model;

  const AddReservation({required this.color, required this.model});

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
          title: tr(context,"reserveData"),
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
            LoadingButton(
              btnKey: addReservationData.btnKey,
              title: tr(context,"send"),
              color: widget.color,
              onTap: () => addReservationData.setAddReservation(context,widget.model,widget.color),
            )
          ],
        ),
      ),
    );
  }
}
