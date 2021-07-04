part of 'CompetitionsHistoryImports.dart';

class CompetitionsHistoryData{
  final GenericBloc<List<CompetitionModel>> offersCubit = new GenericBloc([]);

  Future<void> fetchData(BuildContext context,{bool refresh = true})async{
    var data = await CustomerRepository(context).getHistoryCompetitions(refresh);
    offersCubit.onUpdateData(data);
  }

}