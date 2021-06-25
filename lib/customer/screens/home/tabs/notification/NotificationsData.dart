part of 'NotificationImports.dart';

class NotificationsData{

  final GenericBloc<List<NotifyModel>> notifiesCubit = new GenericBloc([]);

  Future<void> fetchData(BuildContext context,{bool refresh = true})async{
    var data = await ProviderRepository(context).getNotifications(refresh);
    notifiesCubit.onUpdateData(data);
  }

}