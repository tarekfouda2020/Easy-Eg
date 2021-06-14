part of 'OrderDetailsImports.dart';


class OrderDetails extends StatefulWidget {
  final Color color;

  const OrderDetails({required this.color});
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails>{

   OrderDetailsData orderDetailsData = new OrderDetailsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "تفاصيل الطلب",back: true,color: widget.color,),
        preferredSize: Size.fromHeight(60),
      ),

      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [widget.color, MyColors.white],
              begin: Alignment.bottomCenter,

            )),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: BuildOrderItem(color: widget.color),
            ),
            BuildDetailsHeader(),
            BuildDetailsBody(color: widget.color,)
          ],
        ),
      ),

    );
  }
}

