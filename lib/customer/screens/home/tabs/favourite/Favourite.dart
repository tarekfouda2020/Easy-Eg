part of 'FavouriteWidgetsImports.dart';

class Favourite extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "المفضلة",color: currentColor,),
        preferredSize: Size.fromHeight(60),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [currentColor, MyColors.white],
              begin: Alignment.bottomCenter,

            )),
        child: ListView(
          children: [

          ],
        ),
      ),
    );
  }

}

