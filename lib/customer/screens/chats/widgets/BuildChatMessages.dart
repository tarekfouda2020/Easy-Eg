part of 'ChatWidgetImports.dart';

class BuildChatMessages extends StatelessWidget {
  final ChatsData chatsData;
  final String receiverName;
  final Color color;

  const BuildChatMessages(
      {required this.chatsData, required this.receiverName, required this.color});

  @override
  Widget build(BuildContext context) {
    var user = context.watch<UserCubit>().state.model;
    String id = user.type=="user"?user.customerModel!.id
        :user.providerModel!.id;
    return Flexible(
      child: PagedListView(
        reverse: true,
        padding: const EdgeInsets.symmetric(vertical: 10),
        pagingController: chatsData.pagingController,
        builderDelegate: PagedChildBuilderDelegate<MessageModel>(
          noItemsFoundIndicatorBuilder: (context) =>
              BuildNoItemFound(
                title: tr(context,"noMessages"),
                message: tr(context,"sendFirstMsg"),
              ),
          itemBuilder: (context, item, index) {
            if (id == item.senderId) {
              return BuildRightMsg(model: item, user: user,color: color,);
            } else {
              return BuildLeftMsg(
                model: item,
                receiverName: receiverName,
              );
            }
          },
        ),
      ),
    );
  }
}
