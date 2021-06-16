part of 'GalleryWidgetImports.dart';

class BuildImageGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index){
          return CachedImage(
            url: "https://images.unsplash.com/photo-1623856680463-1b656c7fe438?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1019&q=80",
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

