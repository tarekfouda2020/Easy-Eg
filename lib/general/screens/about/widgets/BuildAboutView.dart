part of 'AboutWidgetsImports.dart';

class BuildAboutView extends StatelessWidget {
  final String text;
  final Color color;

  const BuildAboutView({required this.text, required this.color});
  @override
  Widget build(BuildContext context) {
    return LinearContainer(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      color: color,
      child: ListView(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(Res.logo,height: 100,),
          ),
          Html(
            data: text,
          ),
        ],
      ),
    );
  }
}
