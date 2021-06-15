part of 'InformationWidgetImports.dart';

class BuildVideoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: CachedImage(
        height: 160,
        width: MediaQuery.of(context).size.width,
        url: "https://images.unsplash.com/photo-1581432079854-2f6d5678b478?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80",
        alignment: Alignment.center,
        colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
        borderRadius: BorderRadius.circular(10),
        child: Icon(Icons.play_circle_fill_rounded,size: 50,color: MyColors.white,),
      ),
    );
  }
}

