part of 'HomeWidgetsImports.dart';

class BuildBottomNavigationBar extends StatelessWidget {
  final int current;
  final Color color;
  final ProviderHomeData homeData;

  const BuildBottomNavigationBar(
      {required this.current, required this.homeData, required this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: 4,
      tabBuilder: (int index, bool isActive) {
        return BuildTabIcon(
          index: index,
          active: isActive,
          homeData: homeData,
        );
      },
      backgroundColor: current == 4 ? color:homeData.tabs[current].color,
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
