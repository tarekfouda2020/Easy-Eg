part of 'OffersWidgetsImports.dart';

class BuildOfferList extends StatelessWidget {
  final List<OfferModel> offers;
  final Color color;
  const BuildOfferList({required this.offers,required this.color});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      itemCount: offers.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () => AutoRouter.of(context).push(
            ProductDetailsRoute(
              color: color,
              model: offers[index].provider,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: CachedImage(
              height: 140,
              width: MediaQuery.of(context).size.width,
              url: offers[index].img,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
    );
  }
}

