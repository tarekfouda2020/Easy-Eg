part of 'OrdersImports.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders>{

   final OrdersData ordersData = new OrdersData();

   @override
   void initState() {
     ordersData.streamListener(context, mounted);
     super.initState();
   }
   @override
   Widget build(BuildContext context) {
     var currentColor = context.watch<TabsColorCubit>().state.color;
     return DefaultTabController(
       length: 3,
       child: Scaffold(
         backgroundColor: Colors.white,
         appBar: PreferredSize(
           child: DefaultAppBar(title: tr(context,"orders"),color: currentColor,back: false,),
           preferredSize: Size.fromHeight(60),
         ),
         body: LinearContainer(
           padding: EdgeInsets.only(bottom: 100),
           color: currentColor,
           child: GenericListView<ProviderOrderModel>(
             type: ListViewType.separated,
             padding: EdgeInsets.symmetric(horizontal: 15),
             onRefresh: ordersData.fetchCurrentOrders,
             emptyStr: tr(context,"noCurrentOrders"),
             cubit: ordersData.ordersCubit,
             refreshBg: currentColor.withOpacity(.5),
             loadingColor: currentColor,
             params: [context],
             itemBuilder: (context,index,item){
               return BuildOrderCard(
                 model: item,
                 color: currentColor,
                 onClose: (value)=> ordersData.fetchCurrentOrders(context),
               );
             },
           ),
         ),
       ),
     );
   }

}


