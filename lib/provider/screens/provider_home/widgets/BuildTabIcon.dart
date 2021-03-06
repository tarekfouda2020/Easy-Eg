part of 'HomeWidgetsImports.dart';

class BuildTabIcon extends StatelessWidget {

  final int index;
  final bool active;
  final ProviderHomeData homeData;
  BuildTabIcon({required this.index,required this.active,required this.homeData});

  @override
  Widget build(BuildContext context) {
    Color color = active ? MyColors.white : Colors.white60;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            homeData.tabs[index].iconData,
            size: 25,
            color: color,
          ),SizedBox(height: 5),
          MyText(
            title: tr(context,homeData.tabs[index].title),
            size: 9,
            color: color,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}

