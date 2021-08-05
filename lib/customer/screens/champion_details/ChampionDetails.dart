part of "ChampionDetailsImports.dart";

class ChampionDetails extends StatefulWidget {
  final int championId;
  const ChampionDetails(this.championId);
  @override
  _ChampionDetailsState createState() => _ChampionDetailsState();
}

class _ChampionDetailsState extends State<ChampionDetails> {
  final ChampionDetailsData _championDetailsData = ChampionDetailsData();

  @override
  void initState() {
    _championDetailsData.fetchData(context, widget.championId);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context, "championDetails"),
          color: MyColors.primary,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: BlocBuilder<GenericBloc<ChampionDetailsModel?>,
          GenericState<ChampionDetailsModel?>>(
        bloc: _championDetailsData.championCubit,
        builder: (_, state) {
          if (state is GenericUpdateState) {
            if (state.data == null) {
              return Center(
                child: MyText(
                    title: tr(context, "noDetails"),
                    color: MyColors.black,
                    size: 12),
              );
            } else {
              return ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                children: [
                  ChampionDetailsLogo(state.data!.img),
                  ChampionDetailsTitle(state.data!.name),
                  ChampionDetailsDate(state.data!.date),
                  ChampionDetailsVideo(state.data!.videoUrl),
                  ChampionDetailsBtn(_championDetailsData),
                ],
              );
            }
          } else {
            return Center(
              child: LoadingDialog.showLoadingView(),
            );
          }
        },
      ),
    );
  }
}
