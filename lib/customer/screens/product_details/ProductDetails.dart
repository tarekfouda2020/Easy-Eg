part of 'ProductDetailsImports.dart';

class ProductDetails extends StatefulWidget {
  final Color color;

  const ProductDetails({required this.color});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  ProductDetailsData productDetailsData = new ProductDetailsData();

  @override
  void initState() {
    productDetailsData.scrollController.addListener(productDetailsData.scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [widget.color.withOpacity(.5), MyColors.white],
              begin: Alignment.bottomCenter,
            )),
        child: CustomScrollView(
          controller: productDetailsData.scrollController,
          slivers: [
            BuildAppBar(color: widget.color),
            SliverFillRemaining(
              child: Column(
                children: [
                  BuildTabBar(detailsData: productDetailsData),
                  BuildTabBarView(color: widget.color),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
