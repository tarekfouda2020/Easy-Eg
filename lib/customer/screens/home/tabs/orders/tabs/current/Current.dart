part of 'CurrentImports.dart';

class Current extends StatefulWidget {
  final Color color;

  const Current({required this.color});

  @override
  _CurrentState createState() => _CurrentState();
}

class _CurrentState extends State<Current> {

  CurrentData currentData = new CurrentData();


  @override
  void initState() {
    currentData.streamListener(context, mounted);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return GenericListView<OrderModel>(
      type: ListViewType.separated,
      padding: EdgeInsets.symmetric(horizontal: 15),
      onRefresh: currentData.getOrders,
      emptyStr: tr(context,"noNewOrders"),
      cubit: currentData.ordersCubit,
      refreshBg: widget.color.withOpacity(.5),
      loadingColor: widget.color,
      params: [context],
      itemBuilder: (context,index,item){
        return BuildOrderItem(color: widget.color,model: item,);
      },
    );
  }

}


