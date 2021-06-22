part of 'OffersImports.dart';

class OffersData{
  final GenericBloc<List<OfferModel>> offersCubit = new GenericBloc([]);

  fetchData(BuildContext context,{bool refresh = true})async{
    var data = await CustomerRepository(context).getOffers(refresh);
    offersCubit.onUpdateData(data);
  }

}