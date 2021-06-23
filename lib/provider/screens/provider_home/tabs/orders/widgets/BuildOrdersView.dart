part of 'OrdersWidgetsImports.dart';

class BuildOrdersView extends StatelessWidget {
  final List<ProviderOrderModel> orders;
  final Color color;
  final OrdersData ordersData;

  const BuildOrdersView({required this.orders, required this.color,required this.ordersData});
  @override
  Widget build(BuildContext context) {
    if (orders.length>0) {
      return CupertinoScrollbar(
        child: RefreshIndicator(
          onRefresh: ()=>ordersData.fetchCurrentOrders(context),
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: orders.length,
            itemBuilder: (BuildContext context, int index) {
              return BuildOrderCard(
                model: orders[index],
                color: color,
                onTap: ()=>AutoRouter.of(context).push(ProviderOrderDetailsRoute(color: MyColors.providerPrimary,type: 1)),
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
     child: MyText(title: "لايوجد لديك طلبات حالية", color: MyColors.black, size: 12),
   );
  }
}

