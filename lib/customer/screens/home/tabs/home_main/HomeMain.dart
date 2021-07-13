part of 'HomeMainImports.dart';

class HomeMain extends StatefulWidget {
  final HomeMainModel model;

  const HomeMain({required this.model});
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain>{

  final HomeMainData homeMainData = new HomeMainData();

  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: widget.model.category?.name??"",
          color: currentColor,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: currentColor,
        child: GenericListView<SubCategoryModel>(
          type: ListViewType.api,
          padding: EdgeInsets.only(bottom: 100,right: 15,left: 15),
          onRefresh: homeMainData.fetchData,
          params: [context, widget.model],
          loadingColor: currentColor,
          cubit: homeMainData.subCatsCubit,
          emptyStr: "لا يوجد اقسام",
          itemBuilder: (context,index,item){
            return BuildCategoryItem(
              color: currentColor,
              model: item,
            );
          },
        ),
      ),
    );
  }

}


