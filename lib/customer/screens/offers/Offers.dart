part of 'OffersImports.dart';

class Offers extends StatefulWidget {
  final Color color;

  const Offers({required this.color});

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  OffersData offersData = new OffersData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context,"offers"),
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: GenericListView<OfferModel>(
          type: ListViewType.api,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          onRefresh: offersData.fetchData,
          emptyStr: tr(context,"noOffers"),
          cubit: offersData.offersCubit,
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
