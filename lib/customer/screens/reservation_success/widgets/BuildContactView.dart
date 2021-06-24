part of 'ReservSuccessWidgetImports.dart';

class BuildContactView extends StatelessWidget {
  final Color color;
  final ProductModel model;
  final int orderId;

  const BuildContactView(
      {required this.color, required this.model, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BuildContactItem(
            color: color,
            title: tr(context,"phone"),
            image: Res.phone,
            onTap: () => Utils.callPhone(phone: model.phone),
          ),
          BuildContactItem(
            color: color,
            title: tr(context,"chat"),
            image: Res.chat,
            onTap: () => AutoRouter.of(context).popAndPush(
              ChatsRoute(
                orderId: orderId,
                receiverId: model.idProvider,
                receiverName: model.name,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
