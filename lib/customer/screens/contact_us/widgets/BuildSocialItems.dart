part of 'ContactUsWidgetsImports.dart';

class BuildSocialItems extends StatelessWidget {
  final List<SocialModel> socials;

  const BuildSocialItems({required this.socials});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Wrap(
        runSpacing: 15,
        spacing: 20,
        children: List.generate(socials.length, (index) {
          return BuildSocialItem(url: socials[index].url,image: socials[index].img);
        }),
      ),
    );
  }
}

