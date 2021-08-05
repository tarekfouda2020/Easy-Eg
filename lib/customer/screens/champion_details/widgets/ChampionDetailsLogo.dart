part of "ChampionDetailsWidgetsImports.dart";

class ChampionDetailsLogo extends StatelessWidget {
  final String image;
  const ChampionDetailsLogo(this.image);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15, top: 10),
        child: CachedImage(
          url: image,
          height: 180,
          width: MediaQuery.of(context).size.width * .9,
          fit: BoxFit.fill,
          borderRadius: BorderRadius.circular(16),
        ));
  }
}
