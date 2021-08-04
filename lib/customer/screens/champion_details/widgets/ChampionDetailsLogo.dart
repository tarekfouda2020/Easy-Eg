part of "ChampionDetailsWidgetsImports.dart";

class ChampionDetailsLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      height: 160,
      width: 200,
      image: AssetImage(Res.logo),
      fit: BoxFit.contain,
    );
  }
}
