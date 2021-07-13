part of 'ProductsImports.dart';

class Products extends StatefulWidget {
  final Color color;
  final SubCategoryModel model;

  const Products({required this.color, required this.model});

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final ProductsData productsData = new ProductsData();

  @override
  void initState() {
    productsData.catId = widget.model.id;
    productsData.fetchPage(1, context, refresh: false);
    productsData.pagingController.addPageRequestListener((pageKey) {
      productsData.fetchPage(pageKey, context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              DefaultAppBar(
                title: widget.model.name,
                color: widget.color,
              ),
              BuildSearchBar(
                color: widget.color,
                productsData: productsData,
              )
            ],
          ),
        ),
        preferredSize: Size.fromHeight(140),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: LinearContainer(
          color: widget.color,
          child: PagedListView<int, ProductModel>(
            padding: EdgeInsets.symmetric(horizontal: 15),
            pagingController: productsData.pagingController,
            builderDelegate: PagedChildBuilderDelegate<ProductModel>(
                noItemsFoundIndicatorBuilder: (context) => BuildNoItemFound(
                      title: tr(context, "noProviders"),
                      message: tr(context, "providersWillAddedSoon"),
                    ),
                itemBuilder: (context, item, index) {
                  return BuildProductItem(
                    color: widget.color,
                    model: item,
                    onFavTap: () =>
                        productsData.setAddToFavourite(context, item, index),
                    onTap: () => productsData.navigateToDetails(
                        context, widget.color, item),
                  );
                }),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: widget.color,
      //   onPressed: () => AutoRouter.of(context).push(
      //     MapScreenRoute(
      //       catId: widget.model.id,
      //       color: widget.color,
      //     ),
      //   ),
      //   child: Icon(
      //     Icons.location_searching,
      //     size: 25,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}
