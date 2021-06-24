part of 'CompetitionsImports.dart';

class Competitions extends StatefulWidget {
  final Color color;

  const Competitions({required this.color});

  @override
  _CompetitionsState createState() => _CompetitionsState();
}

class _CompetitionsState extends State<Competitions> {
  final CompetitionsData competitionsData = new CompetitionsData();

  @override
  void initState() {
    competitionsData.fetchData(context, refresh: false);
    competitionsData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context,"competitions"),
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: BlocBuilder<GenericBloc<DropDownModel?>,
            GenericState<DropDownModel?>>(
          bloc: competitionsData.comCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              if (state.data != null) {
                return ListView(
                  children: [
                    BuildCompetitionItem(
                      color: widget.color,
                      desc: state.data!.name,
                    ),
                    BuildFormView(competitionsData: competitionsData),
                    SizedBox(height: 50),
                    BuildAddButton(
                      competitionsData: competitionsData,
                      color: widget.color,
                    ),
                  ],
                );
              }
              return Center(
                child: MyText(
                  title: tr(context,"noCompetitionsNow"),
                  color: MyColors.black,
                  size: 12,
                ),
              );
            }
            return LoadingDialog.showLoadingView(color: widget.color);
          },
        ),
      ),
    );
  }
}
