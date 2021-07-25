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
    competitionsData.fetchSocialData(context, refresh: false);
    competitionsData.fetchSocialData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context, "competitions"),
          color: widget.color,
          actions: [
            InkWell(
              onTap: ()=> AutoRouter.of(context).push(CompetitionsHistoryRoute(color: widget.color)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(title: tr(context, "Previous"),size: 12,color: MyColors.white,),
                  ),
                ],
              ),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: Column(
          children: [
            DropdownTextField<DropDownModel>(
              label: tr(context,"government"),
              dropKey: competitionsData.govern,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              showSelectedItem: false,
              iconsColor: MyColors.black,
              fillColor: Colors.white,
              textColor: Colors.black,
              hintColor: Colors.black,
              borderColor: widget.color,
              popUpColor: widget.color,
              validate: (DropDownModel value) => value.validateDropDown(context),
              onChange: (DropDownModel model)=> competitionsData.onGovernChange(model,context),
              finData: (filter) async => await CustomerRepository(context).getGovernments(1,false),
            ),
            BlocBuilder<GenericBloc<DropDownModel?>,
                GenericState<DropDownModel?>>(
              bloc: competitionsData.comCubit,
              builder: (context, state) {
                if (state is GenericUpdateState) {
                  if (state.data != null) {
                    return Flexible(
                      child: ListView(
                        children: [
                          BuildCompetitionItem(
                            color: widget.color,
                            desc: state.data!.name,
                          ),
                          BuildFormView(competitionsData: competitionsData,color: widget.color,),
                          BuildContactSocial(
                            contactUsData: competitionsData,
                            color: widget.color,
                          ),
                          BuildAddButton(
                            competitionsData: competitionsData,
                            color: widget.color,
                          ),
                        ],
                      ),
                    );
                  }
                  return Center(
                    child: MyText(
                      title: tr(context, "noCompetitionsNow"),
                      color: MyColors.black,
                      size: 12,
                    ),
                  );
                }
                return Container();
              },
            ),

          ],
        ),
      ),
    );
  }
}
