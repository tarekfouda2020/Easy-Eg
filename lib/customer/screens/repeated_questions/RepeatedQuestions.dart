part of 'RepeatedQuestionsImports.dart';

class RepeatedQuestions extends StatefulWidget {
  final Color color;

  const RepeatedQuestions({required this.color});

  @override
  _RepeatedQuestionsState createState() => _RepeatedQuestionsState();
}

class _RepeatedQuestionsState extends State<RepeatedQuestions> {
  RepeatedQuestionsData repeatedQuestionsData = new RepeatedQuestionsData();

  @override
  void initState() {
    repeatedQuestionsData.fetchData(context,refresh: false);
    repeatedQuestionsData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context,"repeatedQuestions"),
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: BlocBuilder<GenericBloc<List<QuestionModel>>,
            GenericState<List<QuestionModel>>>(
          bloc: repeatedQuestionsData.dataCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return ListView(
                children: [
                  ExpansionPanelList(
                    dividerColor: MyColors.greyWhite,
                    elevation: 1,
                    expansionCallback: (i,opened)=> repeatedQuestionsData.setExpandItem(i),
                    children: List.generate(state.data.length, (index) {
                      return ExpansionPanel(
                          canTapOnHeader: true,
                          headerBuilder:  (_,isOpen){
                            return ListTile(
                              title: MyText(title: state.data[index].title, color: MyColors.black, size: 10),
                            );
                          },
                          body: ListTile(
                            title: MyText(title: state.data[index].answer, color: MyColors.blackOpacity, size: 10),
                            contentPadding: EdgeInsets.only(bottom: 10,right: 15,left: 15),
                          ),
                          isExpanded: state.data[index].expanded
                      );
                    }),
                  ),
                ],
              );
            } else{
              return LoadingDialog.showLoadingView(color: widget.color);
            }
          },
        ),
      ),
    );
  }
}
