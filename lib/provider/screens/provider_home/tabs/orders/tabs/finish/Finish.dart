part of 'FinishImports.dart';


class Finish extends StatefulWidget {
  final Color color;
  final OrdersData ordersData;

  const Finish({required this.color, required this.ordersData});
  @override
  _FinishState createState() => _FinishState();
}

class _FinishState extends State<Finish>{

  @override
  void initState() {
    widget.ordersData.fetchFinishedOrders(context,refresh: false);
    widget.ordersData.fetchFinishedOrders(context);
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


