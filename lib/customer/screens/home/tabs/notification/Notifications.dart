part of 'NotificationImports.dart';

class Notifications extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "الاشعارات",color: currentColor,back: false,),
        preferredSize: Size.fromHeight(60),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 100),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [currentColor, MyColors.white],
              begin: Alignment.bottomCenter,

            )),
        child: CupertinoScrollbar(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return BuildNotifyItem();
            },
            separatorBuilder: (_,index){
              return Divider(color: MyColors.greyWhite,);
            },
          ),
        ),
      ),
    );
  }

}

