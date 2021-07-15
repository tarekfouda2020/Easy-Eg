part of 'HomeMainWidgetImports.dart';

class BuildCategoryItem extends StatelessWidget {
  final Color color;
  final SubCategoryModel model;
  final HomeMainModel homeMainModel;

  const BuildCategoryItem({required this.color,required this.model, required this.homeMainModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>AutoRouter.of(context).push(ProductsRoute(color: MyColors.convertColor(model.color), model: model,homeMainModel: homeMainModel)),
      child: Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                height: 100,
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: MyText(title: model.name, color: MyColors.white, size: 12,alien: TextAlign.center,),
              ),
            ),
            SizedBox(width: 15,),
            Flexible(
              flex: 1,
              child: Container(
                height: 100,
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: CachedImage(
                  url: model.img,
                  loadingColor: MyColors.white,
                  bgColor: color.withOpacity(.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

