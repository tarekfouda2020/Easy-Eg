part of 'ChatsImports.dart';

class ChatsData {
  final GlobalKey btnKey = new GlobalKey();
  final TextEditingController msgInput = new TextEditingController();
  final TextEditingController report = new TextEditingController();

  List<MessageModel> chatList = [];

  late HubConnection hubConnection;
  late UserModel userModel;
  int count = 0;
  int pageSize = 10;

  final PagingController<int, MessageModel> pagingController = PagingController(firstPageKey: 1);

  fetchData(BuildContext context, int orderId, int pageNumber) async {
    var data = await CustomerRepository(context).getChatMessages(orderId, pageNumber);
    final isLastPage = data.length < pageSize;
    if (isLastPage) {
      var lst = data.reversed.toList();
      pagingController.appendLastPage(lst);
      chatList.addAll(lst);
    } else {
      final nextPageKey = pageNumber + 1;
      var lst = data.reversed.toList();
      pagingController.appendPage(lst, nextPageKey);
      chatList.addAll(lst);
    }
  }

  void setConnectServer(String userId) async {
    hubConnection = HubConnectionBuilder().withUrl("https://hujuzat.ip4s.com/chatHub").build();
    await hubConnection.start();
    hubConnection.onclose((error) => print("error when connect => $error"));
    hubConnection.on("receiveMessage", _handleIncomingChatMessage);
    hubConnection.on("connected", _handleConnectedUsers);
    hubConnection.on("disconnected", _handleDisConnectedUsers);
    connectToServer(userId);
  }

  void connectToServer(String userId) async {
    List<Object> _args = ["$userId"];
    print("_____________$userId");
    await hubConnection.invoke("Connect", args: _args);
  }

  void _handleConnectedUsers(List<dynamic>? args) {
    print(args![0]);
  }

  void _handleDisConnectedUsers(List<dynamic>? args) {
    print(args![0]);
  }

  void _handleIncomingChatMessage(List<dynamic>? args) {
    print(args);
    MessageModel msg = MessageModel.fromJson(args![0]);
    _updateAndMoveDown(msg);
  }

  void _updateAndMoveDown(MessageModel msg) {
    chatList.insert(0, msg);
    pagingController.itemList = [];
    pagingController.itemList = chatList;
  }

  void sendChatMessage(String receiverID, int orderId, BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (msgInput.text.trim().isEmpty) {
      return;
    }
    MessageModel msg = MessageModel(
      date: DateFormat("hh:mm a").format(DateTime.now()),
      message: msgInput.text,
      receiverId: receiverID,
      senderId: userModel.type=="user"? userModel.customerModel!.id : userModel.providerModel!.id,
      type: 0,
    );
    List<Object> _args = [
      "${msg.senderId}",
      "$receiverID",
       msgInput.text,
      orderId,
      0,
      0
    ];
    _updateAndMoveDown(msg);
    await hubConnection.invoke("SendMessage", args: _args);
    msgInput.text = "";
  }

}
