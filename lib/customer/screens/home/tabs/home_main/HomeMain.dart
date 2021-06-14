part of 'HomeMainImports.dart';

class HomeMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "اسم القسم",color: currentColor,),
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

