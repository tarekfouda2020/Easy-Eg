part of 'FilterWidgetsImports.dart';

class BuildFilterAction extends StatelessWidget {
  final Color color;
  final FilterData filterData;

  const BuildFilterAction({required this.color, required this.filterData});
  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: "بحث",
      margin: EdgeInsets.only(right: 20,left: 20,bottom: 20,top: 5),
      color: color,
      borderColor: color,
      textColor: MyColors.white,
      onTap: ()=>filterData.setFilterSearch(context),
    );
  }
}
