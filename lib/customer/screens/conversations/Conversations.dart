part of 'ConversationsImports.dart';

class Conversations extends StatefulWidget {
  final Color color;

  const Conversations({required this.color});
  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations>{

   ConversationsData conversationsData = new ConversationsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "المحادثات",color: widget.color,),
        preferredSize: Size.fromHeight(60),
      ),

      body: LinearContainer(
        color: widget.color,
        child: ListView.separated(
          padding: EdgeInsets.only(top: 20),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index){
            return BuildConversationItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(color: MyColors.greyWhite);
          },
        ),
      ),

    );
  }
}

