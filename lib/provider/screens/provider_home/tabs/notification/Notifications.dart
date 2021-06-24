part of 'NotificationImports.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final NotificationsData notificationsData = new NotificationsData();

  @override
  void initState() {
    notificationsData.fetchData(context, refresh: false);
    notificationsData.fetchData(context);
    super.initState();
  }

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
        child: BlocBuilder<GenericBloc<List<NotifyModel>>, GenericState<List<NotifyModel>>>(
          bloc: notificationsData.notifiesCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              if (state.data.length>0) {
                return CupertinoScrollbar(
                  child: RefreshIndicator(
                    onRefresh: () => notificationsData.fetchData(context),
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      itemCount: state.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return BuildNotifyItem(model: state.data[index],);
                      },
                      separatorBuilder: (_, index) {
                        return Divider(
                          color: MyColors.greyWhite,
                        );
                      },
                    ),
                  ),
                );
              }
              return Center(
                child: MyText(title: tr(context,"noNotifications"), color: MyColors.black, size: 12),
              );
            }
            return LoadingDialog.showLoadingView(color: currentColor);
          },
        ),
      ),
    );
  }
}
