part of 'HomeMainImports.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain>{

  final HomeMainData homeMainData = new HomeMainData();


   @override
  void initState() {
     homeMainData.fetchNewOrders(context,refresh: false);
     homeMainData.fetchNewOrders(context);
     homeMainData.streamListener(context, mounted);
     super.initState();
  }

  @override
   Widget build(BuildContext context) {
     var currentColor = context.watch<TabsColorCubit>().state.color;
     return Scaffold(
       appBar: PreferredSize(
         child: DefaultAppBar(
           title: "الرئيسية",
           color: currentColor,
           back: false,
         ),
         preferredSize: Size.fromHeight(60),
       ),
       body: LinearContainer(
         padding: EdgeInsets.only(bottom: 100),
         color: currentColor,
         child: BlocBuilder<GenericBloc<List<ProviderOrderModel>>, GenericState<List<ProviderOrderModel>>>(
           bloc: homeMainData.ordersCubit,
           builder: (context, state) {
             if (state is GenericUpdateState) {
               return BuildOrdersView(
                 homeMainData: homeMainData,
                 color: currentColor,
                 orders: state.data,
               );
             }
             return LoadingDialog.showLoadingView(color: currentColor);
           },
         ),
       ),
     );
   }

}


