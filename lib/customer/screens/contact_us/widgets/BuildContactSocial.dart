part of 'ContactUsWidgetsImports.dart';

class BuildContactSocial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15)
        )
      ),
      child: Column(
        children: [
          MyText(title: "او عبر التواصل الاجتماعي", color: MyColors.blackOpacity, size: 10),
          BuildSocialItems()
        ],
      ),
    );
  }
}

