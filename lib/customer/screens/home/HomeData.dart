part of 'HomeImports.dart';

class HomeData {

  final GlobalKey<ScaffoldState> scaffold = new GlobalKey();

  final GenericCubit<int> homeTabCubit =new GenericCubit(3);
  final GenericCubit<Color> homeColorCubit =new GenericCubit(Colors.white);

  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  int currentIndex = 3;

  List<BottomTabModel> tabs = [
    BottomTabModel(iconData: Icons.favorite_border, title: "المفضلة",color: Color(0xff269492)),
    BottomTabModel(iconData: Icons.shopping_bag, title: "الطلبات",color: Color(0xff79617f)),
    BottomTabModel(iconData: Icons.notifications, title: "الاشعارات",color: Color(0xffd2866e)),
    BottomTabModel(iconData: Icons.settings, title: "المزيد",color: Color(0xffd2866e)),
  ];

  void initBottomNavigation(TickerProvider ticker,Color color) {
    homeColorCubit.onUpdateData(color);
    tabController = new TabController(length: 5, vsync: ticker);
    animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: ticker,
    );
    curve = CurvedAnimation(
      parent: animationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
      () => animationController.forward(),
    );
  }

  void animateTabsPages(int index, BuildContext context,Color color) {
    if (index != homeTabCubit.state.data) {
      homeTabCubit.onUpdateData(index);
      tabController.animateTo(index);
      homeColorCubit.onUpdateData(color);
    }
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}
