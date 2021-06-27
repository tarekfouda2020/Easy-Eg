part of 'HomeMainImports.dart';

class HomeMain extends StatelessWidget {
  final CategoryModel category;

  const HomeMain({required this.category});

  @override
  Widget build(BuildContext context) {
    var currentColor = context.watch<TabsColorCubit>().state.color;
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: category.name,
          color: currentColor,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        padding: EdgeInsets.only(bottom: 100),
        color: currentColor,
        child: Visibility(
          visible: category.subCategory.length>0,
          child: CupertinoScrollbar(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15),
              itemCount: category.subCategory.length,
              itemBuilder: (BuildContext context, int index) {
                return BuildCategoryItem(
                  color: currentColor,
                  model: category.subCategory[index],
                );
              },
            ),
          ),
          replacement: Center(child: MyText(title: "لا يوجد اقسام", color: MyColors.black, size: 12)),
        ),
      ),
    );
  }
}
