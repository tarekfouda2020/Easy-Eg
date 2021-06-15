part of 'FavouriteWidgetsImports.dart';

class Favourite extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "المفضلة",color: currentColor,back: false,),
        preferredSize: Size.fromHeight(60),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 100),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [currentColor, MyColors.white],
              begin: Alignment.bottomCenter,

            )),
        child: CupertinoScrollbar(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return BuildProductItem(color: currentColor);
            },
          ),
        ),
      ),
    );
  }

}

