part of 'HomeWidgetsImports.dart';

class BuildBottomNavigationBar extends StatelessWidget {

  final int current;
  final Color color;
  final HomeData homeData;

  const BuildBottomNavigationBar({required this.current,required this.color,required this.homeData});

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: 4,
      tabBuilder: (int index, bool isActive) {
        return BuildTabIcon(index: index, active: isActive, homeData: homeData,);
      },
      backgroundColor: color,
      splashColor: MyColors.white,
      activeIndex: current,
      notchAndCornersAnimation: homeData.animation,
      splashSpeedInMilliseconds: 500,
      notchSmoothness: NotchSmoothness.sharpEdge,
      gapLocation: GapLocation.center,
      leftCornerRadius: 0,
      rightCornerRadius: 0,
      height: 65,
      onTap: (index) => homeData.animateTabsPages(index, context,homeData.tabs[index].color),
    );
  }
}

