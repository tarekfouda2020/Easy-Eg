part of 'ProfileWidgetImports.dart';

class BuildCategoriesView extends StatelessWidget {
  final ProviderProfileData profileData;

  const BuildCategoriesView({required this.profileData});

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
            bloc: profileData.catCubit,
            builder: (context, state) {
              return Wrap(
                children: List.generate(cats.length, (index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * .45,
                    height: 60,
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        Radio<int>(
                          value: cats[index].id,
                          groupValue: state.data,
                          onChanged: (value) => profileData.onCategorySelected(context, cats[index]),
                        ),
                        Expanded(
                          child: MyText(
                            title: cats[index].name,
                            color: Colors.black,
                            size: 10,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              );
            },
          ),
          BlocBuilder<GenericBloc<List<SubCategoryModel>>, GenericState<List<SubCategoryModel>>>(
            bloc: profileData.subCatsCubit,
            builder: (context, state) {
              return Wrap(
                spacing: 10,
                runSpacing: 20,
                alignment: WrapAlignment.start,
                children: List.generate(state.data.length, (index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                            value: state.data[index].selected,
                            onChanged: (value) => profileData.setSelectSubCat(index),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
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
            },
          ),
        ],
      ),
    );
  }
}
