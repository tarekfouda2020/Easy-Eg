part of 'CompetitionsWidgetsImports.dart';

class BuildAddButton extends StatelessWidget {
  final CompetitionsData competitionsData;
  final Color color;

  const BuildAddButton({required this.competitionsData, required this.color});
  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: competitionsData.btnKey,
      title: tr(context,"send"),
      color: color,
      onTap: ()=>competitionsData.setSendSubscribe(context),
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
    );
  }
}

