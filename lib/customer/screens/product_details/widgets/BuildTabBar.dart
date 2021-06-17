part of 'DetailsWidgetImports.dart';


class BuildTabBar extends PreferredSize {
  final ProductDetailsData detailsData;

  BuildTabBar({required this.detailsData})
      : super(preferredSize: const Size.fromHeight(50), child: Container());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: detailsData.barCubit,
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: state.data? 80:0),
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
          child: TabBar(
            labelStyle:
            GoogleFonts.cairo(fontSize: 12, fontWeight: FontWeight.w700),
            unselectedLabelStyle:
            GoogleFonts.cairo(fontSize: 12, fontWeight: FontWeight.w700),
            labelColor: MyColors.white,
            unselectedLabelColor: MyColors.black,
            indicatorColor: MyColors.secondary,
            indicator: BoxDecoration(
                color: MyColors.primary,
                borderRadius: BorderRadius.circular(5)),
            tabs: [
              Tab(
                text: "معلومات",
              ),
              Tab(
                text: "التواصل",
              ),
              Tab(
                text: "الصور",
              ),
            ],
          ),
        );
      },
    );
  }
}
