part of 'CompetitionsWidgetsImports.dart';

class BuildCompetitionItem extends StatelessWidget {
  final Color color;
  final String desc;

  const BuildCompetitionItem({required this.color, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color.withOpacity(.3),
          borderRadius: BorderRadius.circular(5)
      ),
      child: MyText(title: desc, color: MyColors.blackOpacity, size: 10,fontWeight: FontWeight.w700,),
    );
  }
}

