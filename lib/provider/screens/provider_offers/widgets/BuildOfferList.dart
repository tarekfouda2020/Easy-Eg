part of 'OffersWidgetsImports.dart';


class BuildOfferItem extends StatelessWidget {
  final ProviderOfferModel model;
  final Color color;
  final ProviderOffersData offersData;

  const BuildOfferItem({required this.model, required this.color, required this.offersData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: CachedImage(
        height: 140,
        width: MediaQuery.of(context).size.width,
        url: model.img,
        borderRadius: BorderRadius.circular(10),
        alignment: Alignment.topLeft,
        colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
        child: IconButton(
          onPressed: ()=> offersData.setRemoveItem(context, model),
          icon: Icon(Icons.delete,size: 25,color: MyColors.white,),
        ),
      ),
    );
  }
}
