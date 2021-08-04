part of "ChampionDetailsWidgetsImports.dart";

class ChampionDetailsTitle extends StatelessWidget {
  final String title;
  const ChampionDetailsTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: MyText(
        title: title,
        size: 16,
        color: MyColors.primary,
      ),
    );
  }
}
