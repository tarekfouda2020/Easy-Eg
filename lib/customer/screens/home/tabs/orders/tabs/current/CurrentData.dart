part of 'CurrentImports.dart';

class CurrentData{

  GenericBloc<List<OrderModel>> ordersCubit = new GenericBloc([]);

  Future<void> getOrders(BuildContext context,{bool refresh = true})async{
    var data = await CustomerRepository(context).getCurrentOrders(refresh);
    ordersCubit.onUpdateData(data);
  }

  final GlobalNotification globalNotification = new GlobalNotification();

  void streamListener(BuildContext context, mounted) {
    if (!mounted) {
      globalNotification.notificationSubject.stream.listen((data) {
        getOrders(context);
      });
    }
  }

}