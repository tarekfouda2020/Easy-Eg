part of 'FavouriteWidgetsImports.dart';

class FavouriteData{
  final GenericBloc<List<ProductModel>> favListCubit = new GenericBloc([]);

  Future<void> fetchData(BuildContext context,{bool refresh = true})async{
    var data = await CustomerRepository(context).getFavouriteProducts(refresh);
    favListCubit.onUpdateData(data);
  }

  removeItemFromFav(BuildContext context,String id,int index)async{
    var result = await CustomerRepository(context).setAddToFavourite(id);
    if (result) {
      favListCubit.state.data.removeAt(index);
      favListCubit.onUpdateData(favListCubit.state.data);
    }
  }

  navigateToDetails(BuildContext context,Color color,ProductModel model)async{
    await AutoRouter.of(context).push<bool?>(ProductDetailsRoute(color: color,model: model));
    fetchData(context);
  }

}