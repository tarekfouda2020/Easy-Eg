part of 'ContactUsWidgetsImports.dart';

class BuildSocialItem extends StatelessWidget {
  final String url;
  final String image;

  const BuildSocialItem({required this.url, required this.image});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Utils.launchURL(url: url),
      child: CachedImage(
        width: 30,
        height: 30,
        url: image,
        boxShape: BoxShape.circle,
        haveRadius: false,
      ),
    );
  }
}

