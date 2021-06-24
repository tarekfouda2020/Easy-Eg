part of 'ProviderRepoImports.dart';
class ProviderRepository{

  late BuildContext _context;
  late ProviderHttpMethods _httpMethods;
  late ProviderAuthMethods _authMethods;

  ProviderRepository(BuildContext context) {
    _context = context;
    _httpMethods = new ProviderHttpMethods(_context);
    _authMethods = new ProviderAuthMethods(_context);
  }

  Future<bool> registerUser(ProviderRegisterModel model)=> _authMethods.registerUser(model);

  Future<bool> updateProfile(ProviderRegisterModel model)=> _authMethods.updateProfile(model);

  Future<List<ProviderOrderModel>> getNewOrders(bool refresh)=>
      _httpMethods.getNewOrders(refresh);

  Future<List<ProviderOrderModel>> getCurrentOrders(bool refresh)=>
      _httpMethods.getCurrentOrders(refresh);

  Future<List<ProviderOrderModel>> fetchFinishedOrders(bool refresh)=>
      _httpMethods.fetchFinishedOrders(refresh);

  Future<ProviderOrderModel?> getOrderDetails(int id, bool refresh)=>
      _httpMethods.getOrderDetails(id, refresh);

  Future<bool> acceptOrder(int id)=> _httpMethods.acceptOrder(id);

  Future<bool> refuseOrder(int id)=> _httpMethods.refuseOrder(id);

  Future<bool> finishOrder(int id)=> _httpMethods.finishOrder(id);

  Future<List<ProviderOfferModel>> getOffers(bool refresh)=>
      _httpMethods.getOffers(refresh);

  Future<bool> removeOffer(int id)=> _httpMethods.removeOffer(id);

  Future<bool> addOffer(File image)=> _httpMethods.addOffer(image);

  Future<List<CategoryModel>> getCategories(bool refresh)=> _httpMethods.getCategories(refresh);

  Future<bool> logout() => _authMethods.logout();


}