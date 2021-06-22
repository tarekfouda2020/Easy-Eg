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
        child: BlocBuilder<GenericBloc<List<OfferModel>>,
            GenericState<List<OfferModel>>>(
          bloc: offersData.offersCubit,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              if (state.data.length>0) {
                return BuildOfferList(color: widget.color,offers: state.data,);
              } else{
                return Center(
                  child: MyText(title: "لايوجد عروض حاليا", color: MyColors.black, size: 12),
                );
              }
            }
            return LoadingDialog.showLoadingView(color: widget.color);
          },
        ),
      ),
    );
  }
}
