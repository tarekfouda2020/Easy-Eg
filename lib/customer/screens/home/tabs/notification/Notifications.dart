part of 'NotificationImports.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications>{

  final NotificationsData notificationsData = new NotificationsData();

  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context,"notifications"),
          color: currentColor,
          back: false,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        padding: EdgeInsets.only(bottom: 100),
        color: currentColor,
        child: GenericListView<NotifyModel>(
          type: ListViewType.separated,
          onRefresh: notificationsData.fetchData,
          emptyStr: tr(context,"noNotifications"),
          cubit: notificationsData.notifiesCubit,
          refreshBg: currentColor.withOpacity(.5),
          loadingColor: currentColor,
          params: [context],
          itemBuilder: (context,index,item){
            return BuildNotifyItem(model: item);
          },
        ),
      ),
    );
  }

}


