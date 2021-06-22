part of 'SocialWidgetsImports.dart';

class BuildSocialItems extends StatelessWidget {
  final ProductModel model;

  const BuildSocialItems({required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Wrap(
        runSpacing: 10,
        spacing: 15,
        children: [
          BuildSocialItem(url: '${model.facebook}',image: Res.facebook,),
          BuildSocialItem(url: '${model.telegram}',image: Res.telegram,),
          BuildSocialItem(url: '${model.twitter}',image: Res.twitter,),
          BuildSocialItem(url: '${model.youType}',image: Res.youtube,),
          BuildSocialItem(url: '${model.instagram}',image: Res.instagram,),

        ],
      ),
    );
  }
}

