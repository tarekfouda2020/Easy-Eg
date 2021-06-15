part of 'DetailsWidgetImports.dart';

class BuildSwiperView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Column(
        children: [
          Container(
            color: Colors.white,
            child: ClipPath(
              clipper: BottomWaveClipper(),
              child: CachedImage(
                url: "https://images.unsplash.com/photo-1574630340198-0252cea163da?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
                height: 330,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
        ],
      ),
    );
  }

}

