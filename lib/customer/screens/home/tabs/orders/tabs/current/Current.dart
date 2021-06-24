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
    currentData.getOrders(context,refresh: false);
    currentData.getOrders(context);
    currentData.streamListener(context, mounted);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: BlocBuilder<GenericBloc<List<OrderModel>>, GenericState<List<OrderModel>>>(
        bloc: currentData.ordersCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            if (state.data.length>0) {
              return RefreshIndicator(
                onRefresh: () => currentData.getOrders(context),
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
                child: MyText(title:tr(context,"noNewOrders"), color: MyColors.black, size: 12),
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


