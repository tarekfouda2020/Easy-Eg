part of 'SelectDeptImports.dart';

class SelectDeptData {
  final GenericBloc<List<CategoryModel>> catsCubit = new GenericBloc([]);

  fetchCategoriesData(BuildContext context ,HomeMainModel model, {bool refresh = true}) async {
    var data = await CustomerRepository(context).getCategories(model, refresh);
    catsCubit.onUpdateData(data);
  }
}
