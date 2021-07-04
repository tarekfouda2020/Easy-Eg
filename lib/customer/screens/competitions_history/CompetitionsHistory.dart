part of 'CompetitionsHistoryImports.dart';

class CompetitionsHistory extends StatefulWidget {
  final Color color;

  const CompetitionsHistory({required this.color});
  @override
  _CompetitionsHistoryState createState() => _CompetitionsHistoryState();
}

class _CompetitionsHistoryState extends State<CompetitionsHistory>{

  final CompetitionsHistoryData historyData = new CompetitionsHistoryData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(title: "المسابقات السابقة",color: widget.color,),
        preferredSize: Size.fromHeight(60),
      ),

      body: LinearContainer(
        color: widget.color,
        child: GenericListView<CompetitionModel>(
          type: ListViewType.api,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          onRefresh: historyData.fetchData,
          emptyStr: "لا يوجد مساباقات",
          cubit: historyData.offersCubit,
          refreshBg: widget.color.withOpacity(.5),
          loadingColor: widget.color,
          params: [context],
          itemBuilder: (context,index,item){
            return BuildOfferItem(color: widget.color,model: item);
          },
        ),
      ),

    );
  }
}

