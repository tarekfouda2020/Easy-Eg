part of 'FinsihRegistWidgetImports.dart';

class BuildCategoriesView extends StatelessWidget {
  final ThirdScreenData registerData;

  const BuildCategoriesView({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<CategoryModel>>, GenericState<List<CategoryModel>>>(
      bloc: registerData.catsCubit,
      builder: (context, baseState) {
        return Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<GenericBloc<int>, GenericState<int>>(
                bloc: registerData.catCubit,
                builder: (context, state) {
                  return Wrap(
                    children: List.generate(baseState.data.length, (index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * .45,
                        child: ListTile(
                          title: MyText(
                            title: baseState.data[index].name,
                            color: Colors.black54,
                            size: 10,
                            fontWeight: FontWeight.w600,
                          ),
                          leading: Radio<int>(
                            value: baseState.data[index].id,
                            groupValue: state.data,
                            onChanged: (value) => registerData
                                .onCategorySelected(context, baseState.data[index]),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
              BlocBuilder<GenericBloc<List<SubCategoryModel>>,
                  GenericState<List<SubCategoryModel>>>(
                bloc: registerData.subCatsCubit,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return Wrap(
                      spacing: 10,
                      runSpacing: 20,
                      alignment: WrapAlignment.start,
                      children: List.generate(state.data.length, (index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * .25,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: Checkbox(
                                  value: state.data[index].selected,
                                  onChanged: (value) =>
                                      registerData.setSelectSubCat(index),
                                ),
                              ),
                              SizedBox(width: 10),
                              Flexible(
                                child: MyText(
                                  title: state.data[index].name,
                                  color: Colors.black54,
                                  size: 8,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    );
                  }
                 return Container(
                   height: 150,
                   alignment: Alignment.center,
                   child: LoadingDialog.showLoadingView(),
                 );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
