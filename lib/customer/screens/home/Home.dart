part of 'HomeImports.dart';

class Home extends StatefulWidget {
  final Color color;
  final int tab;
  final CategoryModel category;

  const Home({required this.color, this.tab = 4,required this.category});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomeData homeData = new HomeData();

  @override
  void initState() {
    homeData.initBottomNavigation(this, widget.color, context,widget.category);
    homeData.animateTabsPages(4, context, widget.color);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return WillPopScope(
      child: DefaultTabController(
        length: 5,
        initialIndex: 4,
        child: Scaffold(
          key: homeData.scaffold,
          extendBody: true,
          body: BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc: homeData.homeTabCubit,
            builder: (context, state) {
              return PageTransitionSwitcher(
                transitionBuilder:
                    (child, primaryAnimation, secondaryAnimation) {
                  return FadeThroughTransition(
                    animation: primaryAnimation,
                    secondaryAnimation: secondaryAnimation,
                    child: child,
                  );
                },
                child: homeData.tabsView[state.data],
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () =>
                homeData.animateTabsPages(4, context, widget.color),
            backgroundColor: currentColor,
            elevation: 4,
            child: Icon(
              Icons.home_outlined,
              size: 30,
              color: MyColors.white,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc: homeData.homeTabCubit,
            builder: (context, state) {
              return BuildBottomNavigationBar(
                current: state.data,
                homeData: homeData,
                color: widget.color,
              );
            },
          ),
        ),
      ),
      onWillPop: homeData.onBackPressed,
    );
  }

  @override
  void dispose() {
    homeData.tabController.dispose();
    homeData.animationController.dispose();
    super.dispose();
  }
}
