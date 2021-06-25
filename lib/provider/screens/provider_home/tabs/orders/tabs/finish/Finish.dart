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


