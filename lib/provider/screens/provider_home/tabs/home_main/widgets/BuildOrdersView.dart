part of 'HomeMainWidgetsImports.dart';

class BuildOrdersView extends StatelessWidget {
  final List<ProviderOrderModel> orders;
  final Color color;
  final HomeMainData homeMainData;

  const BuildOrdersView(
      {required this.orders, required this.color, required this.homeMainData});

  @override
  Widget build(BuildContext context) {
    if (orders.length > 0) {
      return CupertinoScrollbar(
        child: RefreshIndicator(
          onRefresh: () => homeMainData.fetchNewOrders(context),
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: orders.length,
            itemBuilder: (BuildContext context, int index) {
              return BuildOrderCard(
                model: orders[index],
                color: color,
                onClose: (value)=>homeMainData.fetchNewOrders(context),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(color: MyColors.greyWhite);
            },
          ),
        ),
      );
    }
    return Center(
      child: MyText(
          title: "لايوجد لديك طلبات جديدة", color: MyColors.black, size: 12),
    );
  }
}
