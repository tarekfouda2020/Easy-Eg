part of 'SelectDeptImports.dart';

class SelectDept extends StatefulWidget {
  final  HomeMainModel model;

  const SelectDept({required this.model});

  @override
  _SelectDeptState createState() => _SelectDeptState();
}

class _SelectDeptState extends State<SelectDept> {
  final SelectDeptData selectDeptData = new SelectDeptData();

  @override
  void initState() {
    if (widget.model.regionId != 0) {
      selectDeptData.fetchCategoriesData(context,widget.model,refresh: false);
    } else {
      selectDeptData.catsCubit.onUpdateData(context.read<CatsCubit>().state.cats);
    }
    selectDeptData.fetchCategoriesData(context, widget.model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: ListView(
        children: [
          HeaderLogo(),
          BuildUserText(),
          BuildButtonList(selectDeptData: selectDeptData,homeMainModel: widget.model,),
        ],
      ),
    );
  }
}
