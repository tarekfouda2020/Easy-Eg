part of 'OrderDetailsImports.dart';


class OrderDetails extends StatefulWidget {
  final Color color;
  final int id;
  final OrderModel? model;

  const OrderDetails({required this.color, required this.id, this.model});

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {

  OrderDetailsData orderDetailsData = new OrderDetailsData();

  @override
  void initState() {
    if (widget.model != null) {
      orderDetailsData.detailsCubit.onUpdateData(widget.model);
    } else {
      orderDetailsData.fetchOrderDetails(context, widget.id, refresh: false);
    }
    orderDetailsData.fetchOrderDetails(context, widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context,"orderDetails"), back: true, color: widget.color,),
        preferredSize: Size.fromHeight(60),
      ),

      body: LinearContainer(
        color: widget.color,
        child: BlocBuilder<GenericBloc<OrderModel?>, GenericState<OrderModel?>>(
          bloc: orderDetailsData.detailsCubit,
          builder: (context, state) {
            if (state is GenericUpdateState && state.data!=null) {
              return ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: BuildOrderDetailsCard(color: widget.color,),
                  ),
                  BuildDetailsHeader(),
                  BuildDetailsBody(color: widget.color,)
                ],
              );
            } else{
              return LoadingDialog.showLoadingView(color: widget.color);
            }
          },
        ),
      ),

    );
  }
}

