part of 'ReservationSuccessImports.dart';

class ReservationSuccess extends StatefulWidget {
  final Color color;
  final ProductModel model;
  final int orderId;

  const ReservationSuccess({required this.color, required this.model, required this.orderId});

  @override
  _ReservationSuccessState createState() => _ReservationSuccessState();
}

class _ReservationSuccessState extends State<ReservationSuccess> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: widget.color,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BuildCheckView(),
              BuildSuccessText(orderId: widget.orderId),
              BuildContactView(color: widget.color,model: widget.model,orderId: widget.orderId,),
              DefaultButton(
                title: tr(context,"BackToMain"),
                color: widget.color,
                textColor: MyColors.white,
                borderColor: MyColors.white,
                onTap: ()=> AutoRouter.of(context).popUntilRouteWithName(HomeRoute.name),
              ),
            ],
          ),
        ),
      ),
      onWillPop: onBackPressed,
    );
  }


  Future<bool> onBackPressed() async {
    AutoRouter.of(context).popUntilRouteWithName(HomeRoute.name);
    return true;
  }

}
