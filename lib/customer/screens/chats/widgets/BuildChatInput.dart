part of 'ChatWidgetImports.dart';

class BuildChatInput extends StatelessWidget {
  final ChatsData chatsData;
  final String receiverId;
  final int orderId;

  const BuildChatInput(
      {required this.chatsData,
      required this.receiverId,
      required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: ChatTextField(
        controller: chatsData.msgInput,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        label: tr(context,"WriteMsgHere"),
        action: TextInputAction.newline,
        submit: () => chatsData.sendChatMessage(receiverId, orderId, context),
      ),
    );
  }
}
