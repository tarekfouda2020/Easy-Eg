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
  void initState() {
    offersData.fetchData(context, refresh: false);
    offersData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: "العروض",
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: BlocBuilder<GenericBloc<List<ProviderOfferModel>>,
            GenericState<List<ProviderOfferModel>>>(
          bloc: offersData.offersCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              if (state.data.length > 0) {
                return BuildOfferList(
                  color: widget.color,
                  offers: state.data,
                  offersData: offersData,
                );
              } else {
                return Center(
                  child: MyText(
                      title: "لايوجد عروض حاليا",
                      color: MyColors.black,
                      size: 12),
                );
              }
            }
            return LoadingDialog.showLoadingView(color: widget.color);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> offersData.getOfferImage(context),
        backgroundColor: widget.color,
        child: Icon(Icons.add,size: 30,color: MyColors.white,),
      ),
    );
  }
}
