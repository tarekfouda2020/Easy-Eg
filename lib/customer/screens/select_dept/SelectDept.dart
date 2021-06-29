part of 'SelectDeptImports.dart';


class SelectDept extends StatefulWidget {
  final int regionId;

  const SelectDept({required this.regionId});
  @override
  _SelectDeptState createState() => _SelectDeptState();
}

class _SelectDeptState extends State<SelectDept>{

   final SelectDeptData selectDeptData = new SelectDeptData();


   @override
  void initState() {
     if (widget.regionId!=0) {
       selectDeptData.fetchCategoriesData(context, widget.regionId,refresh: false);
     }else{
       selectDeptData.catsCubit.onUpdateData(context.read<CatsCubit>().state.cats);
     }
     selectDeptData.fetchCategoriesData(context, widget.regionId);
     super.initState();
  }

  @override
   Widget build(BuildContext context) {
     return AuthScaffold(
       child: ListView(
         children: [
           HeaderLogo(),
           BuildUserText(),
           BuildButtonList(selectDeptData: selectDeptData),
         ],
       ),
     );
   }

}

