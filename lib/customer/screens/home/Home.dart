part of 'HomeImports.dart';

class Home extends StatefulWidget {
  final Color color;
  final int tab;

  const Home({required this.color, this.tab = 3});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomeData homeData = new HomeData();

  @override
  void initState() {
    homeData.initBottomNavigation(this, widget.color);
    homeData.animateTabsPages(widget.tab, context, widget.color);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          key: homeData.scaffold,
          extendBody: true,
          body: BlocBuilder<GenericCubit<Color>, GenericState<Color>>(
            bloc: homeData.homeColorCubit,
            builder: (context, state) {
              return TabBarView(
                controller: homeData.tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  HomeMain(color: state.data),
                ],
              );
            },
          ),
          floatingActionButton:
              BlocBuilder<GenericCubit<Color>, GenericState<Color>>(
            bloc: homeData.homeColorCubit,
            builder: (context, state) {
              return FloatingActionButton(
                onPressed: () =>
                    homeData.animateTabsPages(4, context, widget.color),
                backgroundColor: state.data,
                elevation: 0,
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: MyColors.white,
                ),
              );
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar:
              BlocBuilder<GenericCubit<int>, GenericState<int>>(
            bloc: homeData.homeTabCubit,
            builder: (context, state) {
              return BuildBottomNavigationBar(
                color: state.data == 4 ? widget.color : homeData.tabs[state.data].color,
                current: state.data,
                homeData: homeData,
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
