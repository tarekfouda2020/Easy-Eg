part of "ChampionDetailsImports.dart";

class ChampionDetailsData {
  final GenericBloc<ChampionDetailsModel?> championCubit =
      GenericBloc<ChampionDetailsModel?>(null);

  Future<void> fetchData(BuildContext context, int championId) async {
    final _data =
        await CustomerRepository(context).getChampionDetails(championId);
    if (_data != null) {
      championCubit.onUpdateData(_data);
    } else {
      championCubit.onUpdateData(null);
    }
  }
}
