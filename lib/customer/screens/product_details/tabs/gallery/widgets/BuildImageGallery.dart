part of 'GalleryWidgetImports.dart';

class BuildImageGallery extends StatelessWidget {
  final ProductModel model;

  const BuildImageGallery({required this.model});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: model.imgList.length,
        itemBuilder: (BuildContext context, int index){
          return CachedImage(
            url: model.imgList[index],
            borderRadius: BorderRadius.circular(5),
          );
        },
        staggeredTileBuilder: (int index) =>
        new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}

