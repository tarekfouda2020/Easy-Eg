part of 'HomeMainImports.dart';

class HomeMainData{

  final GenericBloc<List<ProviderOrderModel>> ordersCubit = new GenericBloc([]);

  Future<void> fetchNewOrders(BuildContext context, {bool refresh = true})async{
    var data = await ProviderRepository(context).getNewOrders(refresh);
    ordersCubit.onUpdateData(data);
  }

}