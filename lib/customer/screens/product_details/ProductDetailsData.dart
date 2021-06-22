part of 'ProductDetailsImports.dart';

class ProductDetailsData{
  final ScrollController scrollController = new ScrollController();
  final GenericBloc<bool> barCubit = new GenericBloc(false);
  final GenericBloc<bool> favCubit = new GenericBloc(false);

  void scrollListener() {
    if (scrollController.offset >= 200) {
      barCubit.onUpdateData(true);
    } else {
      barCubit.onUpdateData(false);
    }
  }

  setAddToFavourite(BuildContext context,ProductModel model)async{
    if (context.read<AuthCubit>().state.authorized) {
      var result = await CustomerRepository(context).setAddToFavourite(model.idProvider);
      if (result) {
        favCubit.onUpdateData(!favCubit.state.data);
      }
      return;
    }
    AutoRouter.of(context).push(SelectAuthRoute());
  }

  navigateToReservation(BuildContext context,Color color,String id){
    if (context.read<AuthCubit>().state.authorized) {
      AutoRouter.of(context).push(AddReservationRoute(color: color));
    } else{
      AutoRouter.of(context).push(SelectAuthRoute());
    }
  }

}