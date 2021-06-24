part of 'CustomerRepoImports.dart';


class CustomerRepository{

  late BuildContext _context;
  late CustomerHttpMethods _customerHttpMethods;
  late CustomerAuthMethods _customerAuthMethods;
  CustomerRepository(BuildContext context) {
    _context = context;
    _customerHttpMethods = new CustomerHttpMethods(_context);
    _customerAuthMethods = new CustomerAuthMethods(_context);
  }

  Future<List<DropDownModel>> getCountries(bool refresh) =>
      _customerHttpMethods.getCountries(refresh);

  Future<List<DropDownModel>> getGovernments(int? countryId,bool refresh) =>
      _customerHttpMethods.getGovernments(countryId,refresh);

  Future<List<DropDownModel>> getCities(int? governId,bool refresh) =>
      _customerHttpMethods.getCities(governId,refresh);

  Future<List<DropDownModel>> getRegions(int? cityId,bool refresh)=>
      _customerHttpMethods.getRegions(cityId, refresh);

  Future<List<CategoryModel>> getCategories(int regionId,bool refresh)=>
      _customerHttpMethods.getCategories(regionId, refresh);

  Future<List<ProductModel>> getProducts(int subCatId,int page,bool refresh)=>
      _customerHttpMethods.getProducts(subCatId, page, refresh);

  Future<bool> setAddToFavourite(String id)=> _customerHttpMethods.setAddToFavourite(id);

  Future<bool> registerUser(CustomerRegisterModel model)=> _customerAuthMethods.registerUser(model);

  Future<int> addOrder(AddReservationModel model)=> _customerHttpMethods.addOrder(model);

  Future<bool> addCompetition(AddCompetitionModel model)=> _customerHttpMethods.addCompetition(model);

  Future<List<ProductModel>> getFavouriteProducts(bool refresh)=>
      _customerHttpMethods.getFavouriteProducts(refresh);

  Future<List<OrderModel>> getNewOrders(bool refresh)=>
      _customerHttpMethods.getNewOrders(refresh);

  Future<List<OrderModel>> getCurrentOrders(bool refresh)=>
      _customerHttpMethods.getCurrentOrders(refresh);

  Future<OrderModel?> getOrderDetails(int id, bool refresh)=>
      _customerHttpMethods.getOrderDetails(id, refresh);

  Future<bool> updateProfile(UpdateCustomerModel model )=>
      _customerAuthMethods.updateProfile(model);

  Future<bool> changePassword(String oldPass,String newPass)=>
      _customerAuthMethods.changePassword(oldPass, newPass);

  Future<List<QuestionModel>> getRepeatedQuestions(bool refresh)=>
      _customerAuthMethods.getRepeatedQuestions(refresh);

  Future<List<SocialModel>> getSocialLinks(bool refresh)=>
      _customerAuthMethods.getSocialLinks(refresh);

  Future<List<OfferModel>> getOffers(bool refresh)=>
      _customerHttpMethods.getOffers(refresh);

  Future<DropDownModel?> getCompetitions(bool refresh)=>
      _customerHttpMethods.getCompetitions(refresh);

  Future<bool> contactUs(String name, String mail, String msg)=>
      _customerAuthMethods.contactUs(name, mail, msg);

  Future<bool> changeLanguage(String lang)=>
      _customerAuthMethods.changeLanguage(lang);

  Future<List<MessageModel>> getChatMessages(int orderId, int pageNumber) =>
      _customerHttpMethods.getChatMessages(orderId, pageNumber);

  Future<List<ConversationModel>> getConversations(bool refresh) =>
      _customerHttpMethods.getConversations(refresh);

  Future<bool> logout() => _customerAuthMethods.logout();

}