part of 'OrderDetailsImports.dart';

class OrderDetailsData{

  final GenericBloc<OrderModel?> detailsCubit = new GenericBloc(null);

  fetchOrderDetails(BuildContext context,int id,{bool refresh = true})async{
    var data = await CustomerRepository(context).getOrderDetails(id, refresh);
    if (data!=null) {
      detailsCubit.onUpdateData(data);
    }
  }

}