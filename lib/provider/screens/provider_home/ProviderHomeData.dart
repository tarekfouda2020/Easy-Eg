part of 'ProviderHomeImports.dart';


class ProviderHomeData{


  final GlobalKey<ScaffoldState> scaffold = new GlobalKey();

  final GenericBloc<int> homeTabCubit =new GenericBloc(4);
  // final GenericCubit<Color> homeColorCubit =new GenericCubit(Colors.white);

  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  List<Widget> tabsView=[
    Conversations(color: Color(0xff6970FF)),
    Orders(),
    Notifications(),
    Settings(),
    HomeMain(),
  ];

  List<BottomTabModel> tabs = [
    BottomTabModel(iconData: Icons.message, title: "conversations",color: Color(0xff6970FF)),
    BottomTabModel(iconData: Icons.shopping_bag, title: "orders",color: Color(0xff6970FF)),
    BottomTabModel(iconData: Icons.notifications, title: "notifications",color: Color(0xff6970FF)),
    BottomTabModel(iconData: Icons.settings, title: "more",color: Color(0xff6970FF)),
  ];

  void initBottomNavigation(TickerProvider ticker,Color color,BuildContext context) {
    context.read<TabsColorCubit>().onUpdateColor(color);
    tabController = new TabController(length: 5, vsync: ticker,initialIndex: 4);
    animationController = AnimationController(
      duration: Duration(milliseconds: 600),
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
      Duration(milliseconds: 600),
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