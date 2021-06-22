part of 'DetailsWidgetImports.dart';

class BuildTabBarView extends StatelessWidget {
  final Color color;
  final ProductDetailsData detailsData;
  final ProductModel model;

  const BuildTabBarView({required this.color,required this.detailsData,required this.model});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TabBarView(
        children: [
          Information(color: color,detailsData: detailsData,model: model),
          Social(color: color,detailsData: detailsData,model: model),
          Gallery(color: color,detailsData: detailsData,model: model),
        ],
      ),
    );
  }
}

