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

}