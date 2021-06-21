part of 'SelectDeptImports.dart';

class SelectDeptData{

  final GenericBloc<List<Category>> catsCubit = new GenericBloc([]);

  fetchCategoriesData(BuildContext context,int regionId, {bool refresh = true})async{
    var data = await CustomerRepository(context).getCategories(regionId,refresh);
    catsCubit.onUpdateData(data);
  }

}