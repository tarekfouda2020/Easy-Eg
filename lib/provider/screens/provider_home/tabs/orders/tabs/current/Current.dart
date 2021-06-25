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
  Widget build(BuildContext context) {
    return GenericListView<ProviderOrderModel>(
      type: ListViewType.separated,
      padding: EdgeInsets.symmetric(horizontal: 15),
      onRefresh: widget.ordersData.fetchCurrentOrders,
      emptyStr: tr(context,"noCurrentOrders"),
      cubit: widget.ordersData.ordersCubit,
      refreshBg: widget.color.withOpacity(.5),
      loadingColor: widget.color,
      params: [context],
      itemBuilder: (context,index,item){
        return BuildOrderCard(
          model: item,
          color: widget.color,
          onClose: (value)=> widget.ordersData.fetchCurrentOrders(context),
        );
      },
    );
  }

}


