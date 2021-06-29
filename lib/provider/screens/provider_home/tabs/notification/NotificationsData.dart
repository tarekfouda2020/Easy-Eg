part of 'NotificationImports.dart';

class NotificationsData{

  final GenericBloc<List<NotifyModel>> notifiesCubit = new GenericBloc([]);

  Future<void> fetchData(BuildContext context, {bool refresh = true})async{
    var data = await ProviderRepository(context).getNotifications(refresh);
    notifiesCubit.onUpdateData(data);
  }

  notifyNavigate(BuildContext context, NotifyModel model){
    int type = model.type;
    int userType = context.read<UserCubit>().state.model.type=="user"?1:2;
    int orderId = model.orderId;

    if ((type >= 1||type < 4)&&userType==1) {
      AutoRouter.of(context).push(OrderDetailsRoute(color: MyColors.primary, id: orderId));
    }else if ((type >= 1||type < 4)&&userType==2) {
      AutoRouter.of(context).push(ProviderOrderDetailsRoute(color: MyColors.primary, id: orderId));
    }
  }

}