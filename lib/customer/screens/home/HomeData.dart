part of 'HomeImports.dart';


class HomeData {

  final GlobalKey<ScaffoldState> scaffold = new GlobalKey();

  final GenericCubit<int> homeTabCubit =new GenericCubit(4);
  // final GenericCubit<Color> homeColorCubit =new GenericCubit(Colors.white);

  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  List<BottomTabModel> tabs = [
    BottomTabModel(iconData: Icons.favorite_border, title: "المفضلة",color: Color(0xff269492)),
    BottomTabModel(iconData: Icons.shopping_bag, title: "الطلبات",color: Color(0xff79617f)),
    BottomTabModel(iconData: Icons.notifications, title: "الاشعارات",color: Color(0xffd2866e)),
    BottomTabModel(iconData: Icons.settings, title: "المزيد",color: Color(0xffd2866e)),
  ];

  void initBottomNavigation(TickerProvider ticker,Color color,BuildContext context) {
    context.read<TabsColorCubit>().onUpdateColor(color);
    tabController = new TabController(length: 5, vsync: ticker,initialIndex: 4);
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
      context.read<TabsColorCubit>().onUpdateColor(color);
    }
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}