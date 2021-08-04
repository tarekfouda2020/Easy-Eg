part of 'ChatsImports.dart';

class Chats extends StatefulWidget {
  final String receiverId;
  final int orderId;
  final String receiverName;
  final Color color;

  const Chats(
      {required this.receiverId,
      required this.receiverName,
      required this.color,
      required this.orderId});

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final ChatsData chatsData = new ChatsData();

  @override
  void initState() {
    var user = context.read<UserCubit>().state.model;
    chatsData.userModel = user;
    String id = user.type=="user"?user.customerModel!.id:user.providerModel!.id;
    chatsData.pagingController.addPageRequestListener((pageKey) {
      chatsData.fetchData(context, widget.orderId, pageKey);
    });
    chatsData.setConnectServer(id);
    WidgetsBinding.instance!.addObserver(
      LifecycleEventHandler(
        detachedCallBack: () async => chatsData.hubConnection.invoke("DisConnect", args: <Object>["$id"]),
        resumeCallBack: ()=> chatsData.setConnectServer(id),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title:widget.receiverName,
        color: widget.color,
      ),
      backgroundColor: Colors.white,
      body: LinearContainer(
        color: widget.color,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Column(
            children: [
              BuildChatMessages(
                receiverName: widget.receiverName,
                chatsData: chatsData,
                color: widget.color,
              ),
              BuildChatInput(
                chatsData: chatsData,
                receiverId: widget.receiverId,
                orderId: widget.orderId,
                color: widget.color,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    String id = chatsData.userModel.type=="user"?chatsData.userModel.customerModel!.id :chatsData.userModel.providerModel!.id;
    chatsData.hubConnection.invoke("DisConnect", args: <Object>["$id"]);
  }
}
