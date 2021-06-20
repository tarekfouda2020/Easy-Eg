part of 'HomeMainImports.dart';

class HomeMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: "الرئيسية",
          color: currentColor,
          back: false,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        padding: EdgeInsets.only(bottom: 100),
        color: currentColor,
        child: CupertinoScrollbar(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return BuildOrderCard(
                color: currentColor,
                onTap: ()=>AutoRouter.of(context).push(ProviderOrderDetailsRoute(color: MyColors.providerPrimary,type: 1)),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(color: MyColors.greyWhite);
            },
          ),
        ),
      ),
    );
  }
}
