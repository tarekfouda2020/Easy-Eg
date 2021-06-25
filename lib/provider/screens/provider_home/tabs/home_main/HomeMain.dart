part of 'HomeMainImports.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain>{

  final HomeMainData homeMainData = new HomeMainData();


   @override
  void initState() {
     homeMainData.streamListener(context, mounted);
     super.initState();
  }

  @override
   Widget build(BuildContext context) {
     var currentColor = context.watch<TabsColorCubit>().state.color;
     return Scaffold(
       appBar: PreferredSize(
         child: DefaultAppBar(
           title: tr(context,"main"),
           color: currentColor,
           back: false,
         ),
         preferredSize: Size.fromHeight(60),
       ),
       body: LinearContainer(
         padding: EdgeInsets.only(bottom: 100),
         color: currentColor,
         child: GenericListView<ProviderOrderModel>(
           type: ListViewType.separated,
           padding: EdgeInsets.symmetric(horizontal: 15),
           onRefresh: homeMainData.fetchNewOrders,
           emptyStr: tr(context,"noNewOrders"),
           cubit: homeMainData.ordersCubit,
           refreshBg: currentColor.withOpacity(.5),
           loadingColor: currentColor,
           params: [context],
           itemBuilder: (context,index,item){
             return BuildOrderCard(
               model: item,
               color: currentColor,
               onClose: (value)=>homeMainData.fetchNewOrders(context),
             );
           },
         ),
       ),
     );
   }

}


