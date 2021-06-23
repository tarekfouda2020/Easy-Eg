part of 'OffersWidgetsImports.dart';


class BuildOfferList extends StatelessWidget {
  final List<ProviderOfferModel> offers;
  final Color color;
  final ProviderOffersData offersData;

  const BuildOfferList({required this.offers, required this.color, required this.offersData});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      itemCount: offers.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: CachedImage(
            height: 140,
            width: MediaQuery.of(context).size.width,
            url: offers[index].img,
            borderRadius: BorderRadius.circular(10),
            alignment: Alignment.topLeft,
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
            child: IconButton(
              onPressed: ()=> offersData.setRemoveItem(context, offers[index]),
              icon: Icon(Icons.delete,size: 25,color: MyColors.white,),
            ),
          ),
        );
      },
    );
  }
}
