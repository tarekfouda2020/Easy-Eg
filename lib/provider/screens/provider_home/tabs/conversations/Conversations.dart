part of 'ConversationsWidgetsImports.dart';

class Conversations extends StatefulWidget {
  final Color color;

  const Conversations({required this.color});

  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  final ConversationsData conversationsData = new ConversationsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context,"conversations"),
          color: widget.color,
          back: false,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: GenericListView<ConversationModel>(
          type: ListViewType.separated,
          padding: EdgeInsets.only(top: 20),
          onRefresh: conversationsData.fetchData,
          emptyStr: tr(context,"noConversations"),
          cubit: conversationsData.conversationCubit,
          refreshBg: widget.color.withOpacity(.5),
          loadingColor: widget.color,
          params: [context],
          itemBuilder: (context,index,item){
            return BuildConversationItem(model: item,color: widget.color,);
          },
        ),
      ),
    );
  }
}
