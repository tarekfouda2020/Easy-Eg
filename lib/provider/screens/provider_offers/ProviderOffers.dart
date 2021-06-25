part of 'ProviderOffersImports.dart';

class ProviderOffers extends StatefulWidget {
  final Color color;

  const ProviderOffers({required this.color});

  @override
  _ProviderOffersState createState() => _ProviderOffersState();
}

class _ProviderOffersState extends State<ProviderOffers> {
  ProviderOffersData offersData = new ProviderOffersData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context, "offers"),
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: GenericListView<ProviderOfferModel>(
          type: ListViewType.api,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          onRefresh: offersData.fetchData,
          emptyStr: tr(context, "noOffers"),
          cubit: offersData.offersCubit,
          refreshBg: widget.color.withOpacity(.5),
          loadingColor: widget.color,
          params: [context],
          itemBuilder: (context, index, item) {
            return BuildOfferItem(
              model: item,
              color: widget.color,
              offersData: offersData,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => offersData.getOfferImage(context),
        backgroundColor: widget.color,
        child: Icon(
          Icons.add,
          size: 30,
          color: MyColors.white,
        ),
      ),
    );
  }
}
