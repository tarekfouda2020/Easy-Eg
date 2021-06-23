part of 'RegisterWidgetsImports.dart';

class BuildCategoriesView extends StatelessWidget {
  final ProviderRegisterData registerData;

  const BuildCategoriesView({required this.registerData});

  @override
  Widget build(BuildContext context) {
    var cats = context.watch<CatsCubit>().state.cats;
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
                children: List.generate(cats.length, (index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * .45,
                    child: ListTile(
                      title: MyText(
                        title: cats[index].name,
                        color: Colors.black54,
                        size: 10,
                        fontWeight: FontWeight.w600,
                      ),
                      leading: Radio<int>(
                        value: cats[index].id,
                        groupValue: state.data,
                        onChanged: (value) => registerData.onCategorySelected(context, cats[index]),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
          BlocBuilder<GenericBloc<List<SubCategoryModel>>, GenericState<List<SubCategoryModel>>>(
            bloc: registerData.subCatsCubit,
            builder: (context, state) {
              return Wrap(
                spacing: 10,
                runSpacing: 20,
                alignment: WrapAlignment.start,
                children: List.generate(state.data.length, (index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * .25,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                            value: state.data[index].selected,
                            onChanged: (value) => registerData.setSelectSubCat(index),
                          ),
                        ),
                        SizedBox(width: 10),
                        MyText(
                          title: state.data[index].name,
                          color: Colors.black54,
                          size: 8,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
