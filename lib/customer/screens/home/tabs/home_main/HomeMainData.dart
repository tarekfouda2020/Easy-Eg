part of 'HomeMainImports.dart';

class HomeMainData{

  final GenericBloc<List<SubCategoryModel>> subCatsCubit=new GenericBloc([]);

  Future<void> fetchData(BuildContext context,HomeMainModel model,{bool refresh = true})async{
    var data = await CustomerRepository(context).getSubCategories(model, refresh);
    subCatsCubit.onUpdateData(data);
  }

}