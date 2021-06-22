part of 'SelectDeptWidgetsImports.dart';

class BuildButtonList extends StatelessWidget {
  final SelectDeptData selectDeptData;

  const BuildButtonList({required this.selectDeptData});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<CategoryModel>>,
        GenericState<List<CategoryModel>>>(
      bloc: selectDeptData.catsCubit,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: List.generate(state.data.length, (index) {
                return DefaultButton(
                  title: state.data[index].name,
                  onTap: () => AutoRouter.of(context).push(
                    HomeRoute(
                      color: MyColors.convertColor(state.data[index].color),
                      tab: 4,
                      category: state.data[index]
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  color: MyColors.primary,
                );
              }),
            ),
          );
        }
        return LoadingDialog.showLoadingView();
      },
    );
  }
}
