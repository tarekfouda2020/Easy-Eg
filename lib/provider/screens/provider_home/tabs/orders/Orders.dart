part of 'OrdersImports.dart';

class Orders extends StatelessWidget {

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
          child: CupertinoScrollbar(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 15),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return BuildOrderCard(
                  color: currentColor,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(color: MyColors.greyWhite);
              },
            ),
          ),
        ),
      ),
    );
  }

}

