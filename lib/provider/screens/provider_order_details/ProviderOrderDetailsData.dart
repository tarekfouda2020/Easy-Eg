part of 'ProviderOrderDetailsImports.dart';

class ProviderOrderDetailsData{
  final GenericBloc<ProviderOrderModel?> detailsCubit = new GenericBloc(null);

  fetchOrderDetails(BuildContext context,int id,{bool refresh = true})async{
    var data = await ProviderRepository(context).getOrderDetails(id, refresh);
    if (data!=null) {
      detailsCubit.onUpdateData(data);
    }
  }

  setAcceptOrder(BuildContext context,int id,Color color)async{
    var result = await ProviderRepository(context).acceptOrder(id);
    if (result) {
      AutoRouter.of(context).push(AcceptOrderSuccessRoute(color: color));
    }
  }

  setRefuseOrder(BuildContext context,int id)async{
    var result = await ProviderRepository(context).refuseOrder(id);
    if (result) {
      AutoRouter.of(context).pop();
    }
  }

  setFinishOrder(BuildContext context,int id)async{
    var result = await ProviderRepository(context).finishOrder(id);
    if (result) {
      AutoRouter.of(context).pop();
    }
  }


}