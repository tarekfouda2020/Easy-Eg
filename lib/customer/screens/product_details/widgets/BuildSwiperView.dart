part of 'DetailsWidgetImports.dart';

class BuildSwiperView extends StatelessWidget {
  final String image;
  final Color color;

  const BuildSwiperView({required this.image,required this.color});
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
              bgColor: color.withOpacity(.5),
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }

}

