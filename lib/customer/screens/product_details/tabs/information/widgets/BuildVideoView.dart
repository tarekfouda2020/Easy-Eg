part of 'InformationWidgetImports.dart';

class BuildVideoView extends StatelessWidget {
  final String link;

  const BuildVideoView({required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: InkWell(
        onTap: () => Utils.launchURL(url: link),
        child: CachedImage(
          height: 160,
          width: MediaQuery.of(context).size.width,
          url: link,
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
