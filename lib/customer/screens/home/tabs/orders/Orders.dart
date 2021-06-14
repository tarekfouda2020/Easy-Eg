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
          child: Column(
            children: [
              DefaultAppBar(title: "الطلبات",color: currentColor,back: false,),
              BuildTabBarView(color: currentColor)
            ],
          ),
          preferredSize: Size.fromHeight(130),
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 100),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [currentColor, MyColors.white],
                begin: Alignment.bottomCenter,

              )),
          child: TabBarView(
            children: [
              Waiting(color: currentColor),
              Current(color: currentColor),
              Finish(color: currentColor),
            ],
          ),
        ),
      ),
    );
  }

}

