part of "ChampionDetailsWidgetsImports.dart";

class ChampionDetailsVideo extends StatelessWidget {
  final String videoUrl;
  const ChampionDetailsVideo(this.videoUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () => Utils.launchURL(url: videoUrl),
        child: CachedImage(
          height: 160,
          width: MediaQuery.of(context).size.width,
          url: videoUrl,
          alignment: Alignment.center,
          colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
          borderRadius: BorderRadius.circular(10),
          child: Icon(
            Icons.play_circle_fill_rounded,
            size: 50,
            color: MyColors.white,
          ),
        ),
      ),
    );
  }
}
