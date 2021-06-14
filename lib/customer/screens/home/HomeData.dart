part of 'HomeImports.dart';

class HomeData {

  final GlobalKey<ScaffoldState> scaffold = new GlobalKey();

  final GenericCubit<int> homeTabCubit =new GenericCubit(3);

  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  int currentIndex = 3;

  List<BottomTabModel> tabs = [
    BottomTabModel(iconData: Icons.home, title: "المفضلة"),
    BottomTabModel(iconData: Icons.favorite, title: "الطلبات"),
    BottomTabModel(iconData: Icons.notifications, title: "الاشعارات"),
    BottomTabModel(iconData: Icons.mail_outline, title: "المزيد"),
  ];

  void initBottomNavigation(TickerProvider ticker) {

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

  void animateTabsPages(int index, BuildContext context) {
    bool result = context.read<AuthCubit>().state.authorized;
    if (index != homeTabCubit.state.data) {
      if (result) {
        homeTabCubit.onUpdateData(index);
        tabController.animateTo(index);
      } else {
        LoadingDialog.showAuthDialog(context: context);
      }
    }
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}
