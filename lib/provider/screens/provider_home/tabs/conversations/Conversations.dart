part of 'ConversationsWidgetsImports.dart';

class Conversations extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "المفضلة",color: currentColor,back: false,),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        padding: EdgeInsets.only(top: 10),
        color: currentColor,
        child: CupertinoScrollbar(
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return BuildConversationItem();
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(color: MyColors.greyWhite);
            },
          ),
        ),
      ),
    );
  }

}

