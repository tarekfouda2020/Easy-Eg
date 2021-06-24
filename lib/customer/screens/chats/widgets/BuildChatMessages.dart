part of 'ChatWidgetImports.dart';

class BuildChatMessages extends StatelessWidget {
  final ChatsData chatsData;
  final String receiverName;

  const BuildChatMessages(
      {required this.chatsData, required this.receiverName});

  @override
  Widget build(BuildContext context) {
    var user = context.watch<UserCubit>().state.model;
    String id = user.type=="user"?user.customerModel!.id
        :user.providerModel!.id;
    return Flexible(
      child: PagedListView(
        physics: AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        reverse: true,
        padding: const EdgeInsets.symmetric(vertical: 10),
        pagingController: chatsData.pagingController,
        builderDelegate: PagedChildBuilderDelegate<MessageModel>(
          // noItemsFoundIndicatorBuilder: (context) => BuildNoItemFound(),
          itemBuilder: (context, item, index) {
            if (id == item.senderId) {
              return BuildRightMsg(model: item, user: user);
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
