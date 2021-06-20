part of 'ReservationSuccessImports.dart';

class ReservationSuccess extends StatefulWidget {
  final Color color;

  const ReservationSuccess({required this.color});

  @override
  _ReservationSuccessState createState() => _ReservationSuccessState();
}

class _ReservationSuccessState extends State<ReservationSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BuildCheckView(),
            BuildSuccessText(),
            BuildContactView(color: widget.color),
            DefaultButton(
              title: "الرجوع للرئيسية",
              color: widget.color,
              textColor: MyColors.white,
              borderColor: MyColors.white,
              onTap: ()=> AutoRouter.of(context).popUntilRouteWithName(HomeRoute.name),
            ),
          ],
        ),
      ),
    );
  }
}
