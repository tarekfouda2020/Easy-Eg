part of 'DetailsWidgetImports.dart';

class BuildTabBarView extends StatelessWidget {
  final Color color;

  const BuildTabBarView({required this.color});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TabBarView(
        children: [
          Information(color: color),
          Container(),
          Container(),
        ],
      ),
    );
  }
}

