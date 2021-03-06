part of 'OrderDetailsWidgetImports.dart';

class BuildOrderActions extends StatelessWidget {
  final Color color;
  final ProviderOrderModel model;
  final ProviderOrderDetailsData detailsData;

  const BuildOrderActions(
      {required this.color, required this.model, required this.detailsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Visibility(
        visible: model.stutesId == 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DefaultButton(
              title: tr(context,"accept"),
              color: color,
              width: MediaQuery.of(context).size.width * .4,
              onTap: () => detailsData.setAcceptOrder(context, model.id, color),
            ),
            DefaultButton(
              title: tr(context,"refuse"),
              color: MyColors.red,
              width: MediaQuery.of(context).size.width * .4,
              onTap: () => detailsData.setRefuseOrder(context, model.id),
            ),
          ],
        ),
        replacement: Column(
          children: [
            DefaultButton(
              title: tr(context,"chat"),
              color: color,
              margin: EdgeInsets.symmetric(horizontal: 20),
              onTap: () => AutoRouter.of(context).push(ChatsRoute(
                orderId: model.id,
                receiverId: model.userId,
                receiverName: model.userName,
                color: color,
              ),
              ),
            ),
            // Visibility(
            //   visible: model.stutesId==2,
            //   child: DefaultButton(
            //     title: "انهاء الطلب",
            //     color: color,
            //     margin: EdgeInsets.all(20),
            //     onTap: () => detailsData.setFinishOrder(context, model.id),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
