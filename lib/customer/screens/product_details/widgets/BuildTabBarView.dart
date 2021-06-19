part of 'DetailsWidgetImports.dart';

class BuildTabBarView extends StatelessWidget {
  final Color color;
  final ProductDetailsData detailsData;

  const BuildTabBarView({required this.color,required this.detailsData});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TabBarView(
        children: [
          Information(color: color,detailsData: detailsData,),
          Social(color: color,detailsData: detailsData,),
          Gallery(color: color,detailsData: detailsData,),
        ],
      ),
    );
  }
}

