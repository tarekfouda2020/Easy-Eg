part of 'ProductsImports.dart';

class ProductsData{

  static final PagingController<int, ProductModel> pagingController = PagingController(firstPageKey: 1);
  final int pageSize = 10;

  Future<void> fetchPage(int pageKey, BuildContext context,int id, {bool refresh = true}) async {

    List<ProductModel> _products = await CustomerRepository(context).getProducts(id,pageKey, refresh);
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


  setAddToFavourite(BuildContext context,ProductModel model,int index)async{
    if (context.read<AuthCubit>().state.authorized) {
      var result = await CustomerRepository(context).setAddToFavourite(model.idProvider);
      if (result) {
        var data = pagingController.itemList!;
        data[index].checkWishList=!data[index].checkWishList;
        pagingController.itemList=[];
        pagingController.itemList=data;
      }
      return;
    }

    AutoRouter.of(context).push(SelectAuthRoute());

  }

}