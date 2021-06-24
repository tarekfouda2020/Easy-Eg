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
  void initState() {
    conversationsData.fetchData(context, refresh: false);
    conversationsData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: "المحادثات",
          color: widget.color,
          back: false,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: BlocBuilder<GenericBloc<List<ConversationModel>>,
            GenericState<List<ConversationModel>>>(
          bloc: conversationsData.conversationCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              if (state.data.length > 0) {
                return RefreshIndicator(
                  onRefresh: () => conversationsData.fetchData(context),
                  child: ListView.separated(
                    padding: EdgeInsets.only(top: 20),
                    itemCount: state.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return BuildConversationItem(
                        model: state.data[index],
                        color: widget.color,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(color: MyColors.greyWhite);
                    },
                  ),
                );
              } else {
                return Center(
                  child: MyText(
                    title: "لا يوجد محادثات",
                    color: MyColors.black,
                    size: 15,
                  ),
                );
              }
            } else {
              return LoadingDialog.showLoadingView(color: widget.color);
            }
          },
        ),
      ),
    );
  }
}
