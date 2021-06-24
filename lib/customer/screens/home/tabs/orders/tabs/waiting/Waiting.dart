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
     waitingData.getOrders(context,refresh: false);
     waitingData.getOrders(context);
     waitingData.streamListener(context, mounted);
     super.initState();
   }

   @override
   Widget build(BuildContext context) {
     return CupertinoScrollbar(
       child: BlocBuilder<GenericBloc<List<OrderModel>>, GenericState<List<OrderModel>>>(
         bloc: waitingData.ordersCubit,
         builder: (context, state) {
           if (state is GenericUpdateState) {
             if (state.data.length>0) {
               return RefreshIndicator(
                 onRefresh: () => waitingData.getOrders(context),
                 child: ListView.separated(
                   padding: EdgeInsets.symmetric(horizontal: 15),
                   itemCount: state.data.length,
                   itemBuilder: (BuildContext context, int index) {
                     return BuildOrderItem(color: widget.color,model: state.data[index],);
                   },
                   separatorBuilder: (_, index) {
                     return Divider(color: MyColors.grey,);
                   },
                 ),
               );
             } else{
               return Center(
                 child: MyText(title: tr(context,"noCurrentOrders"), color: MyColors.black, size: 12),
               );
             }
           } else{
             return LoadingDialog.showLoadingView(color: widget.color);
           }
         },
       ),
     );
   }

}


