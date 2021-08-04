part of "ChampionDetailsImports.dart";

class ChampionDetails extends StatefulWidget {
  final int championId;
  const ChampionDetails(this.championId);
  @override
  _ChampionDetailsState createState() => _ChampionDetailsState();
}

class _ChampionDetailsState extends State<ChampionDetails> {
  final ChampionDetailsData _championDetailsData = ChampionDetailsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context, "championDetails"),
          color: MyColors.primary,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        children: [
          ChampionDetailsLogo(),
          ChampionDetailsTitle("عنوان المسابقة"),
          ChampionDetailsVideo(_championDetailsData),
          ChampionDetailsBtn(_championDetailsData),
        ],
      ),
    );
  }
}
