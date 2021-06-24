part of 'OrdersImports.dart';

class Orders extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          child: Column(
            children: [
              DefaultAppBar(title: tr(context,"orders"),color: currentColor,back: false,),
              BuildTabBarView(color: currentColor)
            ],
          ),
          preferredSize: Size.fromHeight(130),
        ),
        body: LinearContainer(
          padding: EdgeInsets.only(bottom: 100),
          color: currentColor,
          child: TabBarView(
            children: [
              Waiting(color: currentColor),
              Current(color: currentColor),
              // Finish(color: currentColor),
            ],
          ),
        ),
      ),
    );
  }

}

