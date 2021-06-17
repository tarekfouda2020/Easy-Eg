part of 'ProductsImports.dart';


class Products extends StatefulWidget {
  final Color color;

  const Products({required this.color});
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products>{

   ProductsData productsData = new ProductsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              DefaultAppBar(title: "قاعات الافراح",color: widget.color,),
              BuildSearchBar(color: widget.color,)
            ],
          ),
        ),
        preferredSize: Size.fromHeight(140),
      ),

      body: GestureDetector(
        onTap: ()=> FocusScope.of(context).requestFocus(FocusNode()),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [widget.color, MyColors.white],
                begin: Alignment.bottomCenter,
              )),
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) {
              return BuildProductItem(color: widget.color);
            },

          ),
        ),
      ),

    );
  }
}

