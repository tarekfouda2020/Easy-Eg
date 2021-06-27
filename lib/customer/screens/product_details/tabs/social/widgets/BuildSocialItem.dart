part of 'SocialWidgetsImports.dart';

class BuildSocialItem extends StatelessWidget {
  final String? url;
  final String image;

  const BuildSocialItem({required this.url, required this.image});
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: url!="null"&&url!=null,
      child: InkWell(
        onTap: ()=> Utils.launchURL(url: url!),
        child: Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
            shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
}

