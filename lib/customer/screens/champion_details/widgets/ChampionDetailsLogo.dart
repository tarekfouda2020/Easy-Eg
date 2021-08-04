part of "ChampionDetailsWidgetsImports.dart";

class ChampionDetailsLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 10),
      child: Image(
        height: 160,
        width: 200,
        image: AssetImage(Res.logo),
        fit: BoxFit.contain,
      ),
    );
  }
}
