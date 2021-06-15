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
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Colors.white,
        child: NestedScrollView(
          headerSliverBuilder: (context, header) {
            return [
              BuildAppBar(color: widget.color)
            ];
          },
          body: BuildTabBarView(),
        ),
      ),
    );
  }
}
