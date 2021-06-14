part of 'HomeMainImports.dart';

class HomeMain extends StatelessWidget {

  final Color color;

  const HomeMain({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "اسم القسم",color: color,),
        preferredSize: Size.fromHeight(60),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color, MyColors.white],
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

