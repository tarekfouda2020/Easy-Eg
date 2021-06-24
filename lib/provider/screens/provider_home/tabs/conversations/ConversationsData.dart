part of 'ConversationsWidgetsImports.dart';

class ConversationsData {
  final GenericBloc<List<ConversationModel>> conversationCubit =
      new GenericBloc([]);

  fetchData(BuildContext context, {bool refresh = true}) async {
    var data = await CustomerRepository(context).getConversations(refresh);
    conversationCubit.onUpdateData(data);
  }

  navigateToChat(
      BuildContext context, ConversationModel model, Color color) async {
    await AutoRouter.of(context).push(ChatsRoute(
      receiverId: model.userId,
      receiverName: model.userName,
      orderId: model.orderNumber,
      color: color,
    ));

    fetchData(context);
  }
}
