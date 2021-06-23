part of 'OrdersImports.dart';

class OrdersData{

  final GenericBloc<List<ProviderOrderModel>> ordersCubit = new GenericBloc([]);

  Future<void> fetchCurrentOrders(BuildContext context, {bool refresh = true})async{
    var data = await ProviderRepository(context).getCurrentOrders(refresh);
    ordersCubit.onUpdateData(data);
  }
  Future<void> fetchFinishedOrders(BuildContext context, {bool refresh = true})async{
    var data = await ProviderRepository(context).fetchFinishedOrders(refresh);
    ordersCubit.onUpdateData(data);
  }
}