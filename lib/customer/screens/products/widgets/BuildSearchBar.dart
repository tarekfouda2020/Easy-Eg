part of 'ProductsWidgetImports.dart';

class BuildSearchBar extends StatelessWidget {
  final Color color;
  final ProductsData productsData;

  const BuildSearchBar({required this.color, required this.productsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 40,
            color: color,
          ),
          Positioned(
            top: 10,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                children: [
                  Flexible(
                    child: IconTextFiled(
                      controller: productsData.search,
                      label: tr(context,"search"),
                      action: TextInputAction.search,
                      prefixIcon: Icon(Icons.search,size: 20,),
                      borderColor: MyColors.grey,
                      validate: (value)=> value!.noValidate(),
                      submit: (value)=> productsData.pagingController.refresh(),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: ()=> productsData.navigateToFilter(context,color),
                    child: Container(
                      height: 55,
                      width: 50,
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.grey.withOpacity(.5))
                      ),
                      alignment: Alignment.center,
                      child: Icon(Icons.filter_alt_outlined,size: 30,),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
