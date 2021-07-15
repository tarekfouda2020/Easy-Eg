part of 'ProductsImports.dart';

class ProductsData {
  final PagingController<int, ProductModel> pagingController =
      PagingController(firstPageKey: 1);
  final TextEditingController search = new TextEditingController();
  final int pageSize = 10;
  late HomeMainModel homeMainModel;
  Future<void> fetchPage(int pageKey, BuildContext context, {bool refresh = true}) async {
    String? text = search.text.trim().isEmpty?null:search.text.trim();
    List<ProductModel> _products = await CustomerRepository(context)
        .getProducts(pageKey, text, homeMainModel, refresh);
    if (pageKey == 1) {
      pagingController.itemList = [];
    }
    final isLastPage = _products.length < pageSize;
    if (isLastPage) {
      pagingController.appendLastPage(_products);
    } else {
      final nextPageKey = pageKey + 1;
      pagingController.appendPage(_products, nextPageKey);
    }
  }

  setAddToFavourite(BuildContext context, ProductModel model, int index) async {
    if (context.read<AuthCubit>().state.authorized) {
      var result =
          await CustomerRepository(context).setAddToFavourite(model.idProvider);
      if (result) {
        var data = pagingController.itemList!;
        data[index].checkWishList = !data[index].checkWishList;
        pagingController.itemList = [];
        pagingController.itemList = data;
      }
      return;
    }

    AutoRouter.of(context).push(SelectAuthRoute());
  }

  navigateToDetails(BuildContext context,Color color,ProductModel model)async{
    await AutoRouter.of(context).push<bool?>(ProductDetailsRoute(color: color,model: model));
    pagingController.refresh();
  }

  navigateToFilter(BuildContext context,Color color)async{
   var result = await AutoRouter.of(context).push<HomeMainModel?>(FilterRoute(color: color));
   if (result!=null) {
     homeMainModel = result;
     pagingController.refresh();
   }
  }

}
