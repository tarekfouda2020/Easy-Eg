part of "ChampionDetailsWidgetsImports.dart";

class ChampionDetailsDate extends StatelessWidget {
  final DateTime date;
  const ChampionDetailsDate(this.date);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: MyText(
        title:
            tr(context, "date") + " : " + DateFormat("yyyy-MM-dd").format(date),
        size: 14,
        color: MyColors.primary,
      ),
    );
  }
}
