part of 'HomeImports.dart';

class Home extends StatefulWidget {
  final Color color;
  final int tab;

  const Home({required this.color, this.tab = 4});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomeData homeData = new HomeData();

  @override
  void initState() {
    homeData.initBottomNavigation(this, widget.color,context);
    homeData.animateTabsPages(widget.tab, context, widget.color);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return WillPopScope(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          key: homeData.scaffold,
          extendBody: true,
          body: TabBarView(
            controller: homeData.tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Favourite(),
              Container(),
              Container(),
              Container(),
              HomeMain(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => homeData.animateTabsPages(4, context, widget.color),
            backgroundColor: currentColor,
            elevation: 0,
            child: Icon(
              Icons.add,
              size: 30,
              color: MyColors.white,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BlocBuilder<GenericCubit<int>, GenericState<int>>(
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
