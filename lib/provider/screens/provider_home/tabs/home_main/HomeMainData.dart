part of 'HomeMainImports.dart';

class HomeMainData{

  final GenericBloc<List<ProviderOrderModel>> ordersCubit = new GenericBloc([]);

  Future<void> fetchNewOrders(BuildContext context, {bool refresh = true})async{
    var data = await ProviderRepository(context).getNewOrders(refresh);
    ordersCubit.onUpdateData(data);
  }

  final GlobalNotification globalNotification = new GlobalNotification();

  void streamListener(BuildContext context, mounted) {
    if (!mounted) {
      globalNotification.notificationSubject.stream.listen((data) {
        fetchNewOrders(context);
      });
    }
  }


}