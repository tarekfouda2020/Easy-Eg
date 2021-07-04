part of 'HistoryWidgetsImports.dart';

class BuildOfferItem extends StatelessWidget {
  final CompetitionModel model;
  final Color color;
  const BuildOfferItem({required this.model,required this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Utils.launchURL(url: model.videoUrl),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: CachedImage(
          height: 140,
          width: MediaQuery.of(context).size.width,
          url: model.img,
          borderRadius: BorderRadius.circular(10),
          alignment: Alignment.center,
          bgColor: color.withOpacity(.5),
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
          child: Icon(Icons.play_circle_fill_rounded,size: 50,),
        ),
      ),
    );
  }
}

