part of 'TermsWidgetsImports.dart';

class BuildTermsView extends StatelessWidget {
  final String text;
  final Color color;

  const BuildTermsView({required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return LinearContainer(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      color: color,
      child: ListView(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Res.logo,height: 100,),
          Html(
            data: text,
          ),
        ],
      ),
    );
  }
}
