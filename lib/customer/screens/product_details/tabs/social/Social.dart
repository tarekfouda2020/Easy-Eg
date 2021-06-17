part of 'SocialImports.dart';

class Social extends StatelessWidget {
  final Color color;

  const Social({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                MyText(
                  title: "وسائل التواصل الاجتماعي",
                  color: MyColors.black,
                  size: 14,
                  fontWeight: FontWeight.w700,
                ),
                BuildSocialItems(),
              ],
            ),
          ),
          BuildReservationButton(color: color,),
        ],
      ),
    );
  }

}

