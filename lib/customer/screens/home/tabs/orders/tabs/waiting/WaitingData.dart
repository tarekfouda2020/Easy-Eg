part of 'WaitingImports.dart';

class WaitingData{
  GenericBloc<List<OrderModel>> ordersCubit = new GenericBloc([]);

  Future<void> getOrders(BuildContext context,{bool refresh = true})async{
    var data = await CustomerRepository(context).getNewOrders(refresh);
    ordersCubit.onUpdateData(data);
  }
}