part of 'CurrentImports.dart';


class Current extends StatefulWidget {
  final Color color;
  final OrdersData ordersData;

  const Current({required this.color, required this.ordersData});

  @override
  _CurrentState createState() => _CurrentState();
}

class _CurrentState extends State<Current> {

  @override
  void initState() {
    widget.ordersData.fetchCurrentOrders(context,refresh: false);
    widget.ordersData.fetchCurrentOrders(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: BlocBuilder<GenericBloc<List<ProviderOrderModel>>, GenericState<List<ProviderOrderModel>>>(
        bloc: widget.ordersData.ordersCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return BuildOrdersView(
              ordersData: widget.ordersData,
              color: widget.color,
              orders: state.data,
            );
          }
          return LoadingDialog.showLoadingView(color: widget.color);
        },
      ),
    );
  }

}


