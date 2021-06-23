part of 'ProviderOrderDetailsImports.dart';

class ProviderOrderDetailsData{
  final GenericBloc<ProviderOrderModel?> detailsCubit = new GenericBloc(null);

  fetchOrderDetails(BuildContext context,int id,{bool refresh = true})async{
    var data = await ProviderRepository(context).getOrderDetails(id, refresh);
    if (data!=null) {
      detailsCubit.onUpdateData(data);
    }
  }
}