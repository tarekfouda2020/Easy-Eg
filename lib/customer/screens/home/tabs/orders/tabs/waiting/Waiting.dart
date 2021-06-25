part of 'WaitingImports.dart';

class Waiting extends StatefulWidget {
  final Color color;

  const Waiting({required this.color});
  @override
  _WaitingState createState() => _WaitingState();
}

class _WaitingState extends State<Waiting>{

   WaitingData waitingData = new WaitingData();

   @override
   void initState() {
     waitingData.streamListener(context, mounted);
     super.initState();
   }

   @override
   Widget build(BuildContext context) {
     return GenericListView<OrderModel>(
       type: ListViewType.separated,
       padding: EdgeInsets.symmetric(horizontal: 15),
       onRefresh: waitingData.getOrders,
       emptyStr: tr(context,"noCurrentOrders"),
       cubit: waitingData.ordersCubit,
       refreshBg: widget.color.withOpacity(.5),
       loadingColor: widget.color,
       params: [context],
       itemBuilder: (context,index,item){
         return BuildOrderItem(color: widget.color,model: item,);
       },
     );
   }

}


