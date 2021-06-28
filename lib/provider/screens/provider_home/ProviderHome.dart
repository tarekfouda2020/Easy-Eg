part of 'ProviderHomeImports.dart';

class ProviderHome extends StatefulWidget {
  @override
  _ProviderHomeState createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> with TickerProviderStateMixin{

   ProviderHomeData homeData = new ProviderHomeData();

   @override
   void initState() {
     GlobalNotification.instance.setupNotification(context);
     homeData.initBottomNavigation(this, MyColors.providerPrimary, context);
     homeData.animateTabsPages(4, context, MyColors.providerPrimary);
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
                 homeData.animateTabsPages(4, context, MyColors.providerPrimary),
             backgroundColor: currentColor,
             elevation: 4,
             child: Icon(
               Icons.home_outlined,
               size: 30,
               color: MyColors.white,
             ),
           ),
           floatingActionButtonLocation:
           FloatingActionButtonLocation.centerDocked,
           bottomNavigationBar: BlocBuilder<GenericBloc<int>, GenericState<int>>(
             bloc: homeData.homeTabCubit,
             builder: (context, state) {
               return BuildBottomNavigationBar(
                 current: state.data,
                 homeData: homeData,
                 color: MyColors.providerPrimary,
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

