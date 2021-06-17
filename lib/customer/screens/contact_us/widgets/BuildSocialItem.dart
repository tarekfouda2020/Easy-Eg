part of 'ContactUsWidgetsImports.dart';

class BuildSocialItem extends StatelessWidget {
  final String url;
  final String image;

  const BuildSocialItem({required this.url, required this.image});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Utils.launchURL(url: url),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
          shape: BoxShape.circle
        ),
      ),
    );
  }
}

