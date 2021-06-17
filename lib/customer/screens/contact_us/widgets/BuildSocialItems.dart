part of 'ContactUsWidgetsImports.dart';

class BuildSocialItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Wrap(
        runSpacing: 10,
        spacing: 15,
        children: [
          BuildSocialItem(url: '',image: Res.facebook,),
          BuildSocialItem(url: '',image: Res.telegram,),
          BuildSocialItem(url: '',image: Res.twitter,),
          BuildSocialItem(url: '',image: Res.youtube,),
          BuildSocialItem(url: '',image: Res.instagram,),

        ],
      ),
    );
  }
}

