part of 'SelectDeptImports.dart';

class SelectDept extends StatefulWidget {
  final int regionId;
  final int cityId;
  final int governorateId;

  const SelectDept(
      {required this.regionId,
      required this.cityId,
      required this.governorateId});

  @override
  _SelectDeptState createState() => _SelectDeptState();
}

class _SelectDeptState extends State<SelectDept> {
  final SelectDeptData selectDeptData = new SelectDeptData();

  @override
  void initState() {
    print("========${widget.regionId}");
    print("======+++++==${widget.cityId}");
    print("=====####===${widget.governorateId}");

    if (widget.regionId != 0) {
      selectDeptData.fetchCategoriesData(
          context, widget.regionId, widget.cityId, widget.governorateId,
          refresh: false);
    } else {
      selectDeptData.catsCubit
          .onUpdateData(context.read<CatsCubit>().state.cats);
    }
    selectDeptData.fetchCategoriesData(
        context, widget.regionId, widget.cityId, widget.governorateId);
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
