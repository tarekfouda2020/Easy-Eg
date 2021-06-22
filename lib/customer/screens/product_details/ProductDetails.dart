part of 'ProductDetailsImports.dart';

class ProductDetails extends StatefulWidget {
  final Color color;
  final ProductModel model;

  const ProductDetails({required this.color, required this.model});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  ProductDetailsData productDetailsData = new ProductDetailsData();

  @override
  void initState() {
    productDetailsData.scrollController
        .addListener(productDetailsData.scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: LinearContainer(
        color: widget.color,
        child: CustomScrollView(
          controller: productDetailsData.scrollController,
          slivers: [
            BuildAppBar(
              color: widget.color,
              model: widget.model,
              detailsData: productDetailsData,
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  BuildTabBar(
                    detailsData: productDetailsData,
                    color: widget.color,
                  ),
                  BuildTabBarView(
                    color: widget.color,
                    detailsData: productDetailsData,
                    model: widget.model,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
