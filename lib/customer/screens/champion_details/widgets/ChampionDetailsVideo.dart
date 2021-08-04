part of "ChampionDetailsWidgetsImports.dart";

class ChampionDetailsVideo extends StatelessWidget {
  final ChampionDetailsData _championDetailsData;
  const ChampionDetailsVideo(this._championDetailsData);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: MediaQuery.of(context).size.height * .3,
      color: MyColors.primary,
    );
  }
}
