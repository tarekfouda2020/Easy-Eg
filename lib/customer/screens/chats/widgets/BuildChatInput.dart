part of 'ChatWidgetImports.dart';

class BuildChatInput extends StatelessWidget {
  final ChatsData chatsData;
  final String receiverId;
  final int orderId;
  final Color color;

  const BuildChatInput(
      {required this.chatsData,
      required this.receiverId,
      required this.color,
      required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      color: color,
      child: ChatTextField(
        controller: chatsData.msgInput,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        hint: tr(context,"WriteMsgHere"),
        action: TextInputAction.newline,
        submit: () => chatsData.sendChatMessage(receiverId, orderId, context),
      ),
    );
  }
}
