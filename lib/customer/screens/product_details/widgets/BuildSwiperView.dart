part of 'DetailsWidgetImports.dart';

class BuildSwiperView extends StatelessWidget {
  final String image;

  const BuildSwiperView({required this.image});
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Column(
        children: [
          ClipPath(
            clipper: BottomWaveClipper(),
            child: CachedImage(
              url: image,
              height: 340,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }

}

