part of 'OrdersImports.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders>{

   final OrdersData ordersData = new OrdersData();

   @override
   void initState() {
     ordersData.fetchCurrentOrders(context,refresh: false);
     ordersData.fetchCurrentOrders(context);
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
           child: DefaultAppBar(title: "الطلبات",color: currentColor,back: false,),
           preferredSize: Size.fromHeight(60),
         ),
         body: LinearContainer(
           padding: EdgeInsets.only(bottom: 100),
           color: currentColor,
           child: BlocBuilder<GenericBloc<List<ProviderOrderModel>>, GenericState<List<ProviderOrderModel>>>(
             bloc: ordersData.ordersCubit,
             builder: (context, state) {
               if (state is GenericUpdateState) {
                 return BuildOrdersView(
                   ordersData: ordersData,
                   color: currentColor,
                   orders: state.data,
                 );
               }
               return LoadingDialog.showLoadingView(color: currentColor);
             },
           ),
         ),
       ),
     );
   }

}


