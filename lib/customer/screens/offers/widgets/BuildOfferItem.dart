part of 'OffersWidgetsImports.dart';

class BuildOfferItem extends StatelessWidget {
  final OfferModel model;
  final Color color;
  const BuildOfferItem({required this.model,required this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(
        ProductDetailsRoute(color: color, model: model.provider),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: CachedImage(
          height: 140,
          width: MediaQuery.of(context).size.width,
          url: model.img,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

