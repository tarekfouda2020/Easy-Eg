part of 'ActiveAccountWidgetsImports.dart';

class BuildText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title:tr(context,"activeAccount"),
            size: 18,
            color: MyColors.primary,
          ),
          MyText(
            title: tr(context,"codeSendToPhone"),
            size: 13,
            color: MyColors.black.withOpacity(.6),
          ),
        ],
      ),
    );
  }
}
