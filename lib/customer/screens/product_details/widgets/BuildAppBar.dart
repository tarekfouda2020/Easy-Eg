part of 'DetailsWidgetImports.dart';

class BuildAppBar extends StatelessWidget {
  final Color color;

  const BuildAppBar({required this.color});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      pinned: true,
      floating: false,
      toolbarHeight: 50,
      leading: InkWell(
        onTap: () => AutoRouter.of(context).pop(),
        child: Container(
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.5),
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.arrow_back,
            size: 20,
            color: MyColors.black,
          ),
        ),
      ),
      actions: [
        InkWell(
          onTap: () => AutoRouter.of(context).pop(),
          child: Container(
            width: 38,
            height: 38,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.5),
                shape: BoxShape.circle
            ),
            child: Icon(
              Icons.favorite_border,
              size: 20,
              color: Colors.red,
            ),
          ),
        ),
      ],
      flexibleSpace: BuildSwiperView(),
      expandedHeight: 300,
      automaticallyImplyLeading: false,
    );
  }
}

