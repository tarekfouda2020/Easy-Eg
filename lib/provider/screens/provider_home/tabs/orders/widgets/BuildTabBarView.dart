part of 'OrdersWidgetsImports.dart';

class BuildTabBarView extends StatelessWidget {
  final Color color;

  const BuildTabBarView({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 65,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(height: 40,color: color,),
          Positioned(
            top: 20,
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: color)]
              ),
              child: TabBar(
                labelColor: color,
                labelStyle: GoogleFonts.cairo(fontSize: 12),
                unselectedLabelColor: MyColors.black,
                indicatorColor: color,
                tabs: [
                  Tab(text: "الحالية"),
                  Tab(text: "المنتهية"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

