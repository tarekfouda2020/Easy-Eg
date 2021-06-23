part of 'ProviderOffersImports.dart';

class ProviderOffersData{

  final GenericBloc<List<ProviderOfferModel>> offersCubit = new GenericBloc([]);

  fetchData(BuildContext context,{bool refresh = true})async{
    var data = await ProviderRepository(context).getOffers(refresh);
    offersCubit.onUpdateData(data);
  }
  
  setRemoveItem(BuildContext context,ProviderOfferModel model)async{
    var result = await ProviderRepository(context).removeOffer(model.id);
    if (result) {
      offersCubit.state.data.remove(model);
      offersCubit.onUpdateData(offersCubit.state.data);
    }
  }

  getOfferImage(BuildContext context)async{
    var image = await Utils.getImage();
    if (image!=null) {
      setAddOffer(context, image);
    }
  }

  setAddOffer(BuildContext context,File image)async{
    var result = await ProviderRepository(context).addOffer(image);
    if (result) {
      fetchData(context);
    }
  }

}