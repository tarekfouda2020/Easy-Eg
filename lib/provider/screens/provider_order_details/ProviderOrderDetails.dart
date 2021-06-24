part of 'ProviderOrderDetailsImports.dart';

class ProviderOrderDetails extends StatefulWidget {
  final Color color;
  final int id;
  final ProviderOrderModel? model;

  const ProviderOrderDetails(
      {required this.color, required this.id, this.model});

  @override
  _ProviderOrderDetailsState createState() => _ProviderOrderDetailsState();
}

class _ProviderOrderDetailsState extends State<ProviderOrderDetails> {
  ProviderOrderDetailsData detailsData = new ProviderOrderDetailsData();

  @override
  void initState() {
    if (widget.model != null) {
      detailsData.detailsCubit.onUpdateData(widget.model);
    } else {
      detailsData.fetchOrderDetails(context, widget.id, refresh: false);
    }
    detailsData.fetchOrderDetails(context, widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: tr(context,"orderDetails"),
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: BlocBuilder<GenericBloc<ProviderOrderModel?>,
            GenericState<ProviderOrderModel?>>(
          bloc: detailsData.detailsCubit,
          builder: (context, state) {
            if (state.data == null || state is GenericInitialState) {
              return LoadingDialog.showLoadingView(color: widget.color);
            }
            return Column(
              children: [
                Flexible(
                  child: ListView(
                    children: [
                      AbsorbPointer(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: BuildOrderCard(
                            color: widget.color,
                            model: state.data!,
                          ),
                        ),
                      ),
                      BuildDetailsHeader(),
                      BuildDetailsBody(
                        color: widget.color,
                        model: state.data!,
                      )
                    ],
                  ),
                ),
                BuildOrderActions(
                  color: widget.color,
                  model: state.data!,
                  detailsData: detailsData,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
