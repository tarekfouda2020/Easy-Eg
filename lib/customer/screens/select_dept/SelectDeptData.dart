part of 'SelectDeptImports.dart';

class SelectDeptData {
  final GenericBloc<List<CategoryModel>> catsCubit = new GenericBloc([]);

  fetchCategoriesData(
      BuildContext context, int regionId, int cityId, int governorateId,
      {bool refresh = true}) async {
    var data = await CustomerRepository(context)
        .getCategories(regionId, cityId, governorateId, refresh);
    catsCubit.onUpdateData(data);
  }
}
