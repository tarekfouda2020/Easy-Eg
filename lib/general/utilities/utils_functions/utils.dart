part of 'UtilsImports.dart';

class Utils {

  static Future<void> manipulateSplashData(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var data = await CustomerRepository(context).getCategories(HomeMainModel(), false);
    context.read<CatsCubit>().onUpdateCats(data);
    var strUser = prefs.get("user");
    String lang = prefs.getString("lang")??"ar";
    if (strUser != null) {
      UserModel data = UserModel.fromJson(json.decode("$strUser"));
      String phone = data.type=="user"?data.customerModel!.phone:data.providerModel!.phone;
      var result = await GeneralRepository(context).checkActive(phone);
      if (!result) {
        prefs.clear();
        changeLanguage(lang, context);
        AutoRouter.of(context).push(SelectUserRoute());
      }
      GlobalState.instance.set("token", data.token);
      changeLanguage(data.lang ?? lang, context);
      setSplashCurrentUserData(data, context);
    } else {
      changeLanguage(lang, context);
      AutoRouter.of(context).push(SelectUserRoute());
    }
  }

  static Future<void> manipulateLoginData(
      Map<String, dynamic> data, BuildContext context) async {
    if (data["status"]) {
      UserModel user = UserModel();
      int type = data["data"]["typeUser"];
      if (type == 1) {
        user.customerModel = CustomerModel.fromJson(data["data"]);
      } else {
        user.providerModel = ProviderModel.fromJson(data["data"]);
      }
      user.type = type == 1 ? "user" : "provider";
      user.token = data["token"];
      user.lang = context.read<LangCubit>().state.locale.languageCode;
      GlobalState.instance.set("token", user.token);
      await Utils.saveUserData(user);
      Utils.setCurrentUserData(user, context);
    } else {
      AutoRouter.of(context)
          .push(ActiveAccountRoute(userId: data["data"]["id"]));
    }
  }

  static void setCurrentUserData(UserModel model, BuildContext context) async {
    context.read<UserCubit>().onUpdateUserData(model);
    context.read<AuthCubit>().onUpdateAuth(true);
    if (context.read<UserCubit>().state.model.type == "user") {
      AutoRouter.of(context).popUntilRouteWithName(HomeRoute.name);
    } else {
      AutoRouter.of(context).push(ProviderHomeRoute());
    }
  }

  static void setSplashCurrentUserData(
      UserModel model, BuildContext context) async {
    context.read<UserCubit>().onUpdateUserData(model);
    context.read<AuthCubit>().onUpdateAuth(true);
    if (context.read<UserCubit>().state.model.type == "user") {
      AutoRouter.of(context).push(SelectAddressRoute(showBack: false));
    } else {
      AutoRouter.of(context).push(ProviderHomeRoute());
    }
  }

  static Future<void> saveUserData(UserModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user", json.encode(model.toJson()));
  }

  static Future<void> changeLanguage(String lang, BuildContext context)async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("lang", lang);
    context.read<LangCubit>().onUpdateLanguage(lang);
  }

  static UserModel getSavedUser({required BuildContext context}) {
    return context.read<UserCubit>().state.model;
  }

  static Future<String?> getDeviceId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("deviceId");
  }

  static Future<void> setDeviceId(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("deviceId", token);
  }

  static void clearSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  // static CustomerModel getCustomerData({@required BuildContext context}){
  //   var provider = Provider.of<UserStore>(context,listen: false);
  //   return provider.model.customer;
  // }

  // static DelegateModel getDelegateData({@required BuildContext context}){
  //   var provider = Provider.of<UserProvider>(context,listen: false);
  //   return provider.model.delegate;
  // }

  // static int getCurrentUserType({@required BuildContext context}){
  //   var provider = Provider.of<UserStore>(context,listen: false);
  //   return provider.model.type;
  // }
  //
  // static String getCurrentUserLang({@required BuildContext context}){
  //   var provider = Provider.of<UserStore>(context,listen: false);
  //   return provider.model.lang;
  // }
  //
  // static String getCurrentUserToken({@required BuildContext context}){
  //   var provider = Provider.of<UserStore>(context,listen: false);
  //   return provider.model.token;
  // }
  //
  // static void setCurrentUserType({@required BuildContext context,@required int type}){
  //   var provider = Provider.of<UserStore>(context,listen: false);
  //   SavedDataModel model=provider.model;
  //   model.type=type;
  //   provider.setUserModel(model);
  // }

  // static void setCurrentUserLang({@required BuildContext context,@required String lang}){
  //   var provider =Provider.of<UserStore>(context,listen: false);
  //   SavedDataModel model=provider.model;
  //   model.lang=lang;
  //   provider.setUserModel(model);
  //   saveUserData(provider.model);
  //   changeLanguage(lang,context);
  // }

  // static String getCurrentUserId({required BuildContext context}){
  //   var provider = context.watch<UserCubit>().state.model;
  //   return provider.id;
  // }

  // static void setSelectUser({@required int type, @required BuildContext context}) async {
  //   setCurrentUserType(context: context,type: type);
  //   ExtendedNavigator(router: AppRouter(), name: Routes.login);
  // }

  static void launchURL({required String url}) async {
    if (!url.toString().startsWith("https")) {
      url = "https://" + url;
    }
    await launch(url);
  }

  static void launchWhatsApp(phone) async {
    String message = '?????????? ????';
    if (phone.startsWith("00966")) {
      phone = phone.substring(5);
    }
    var _whatsAppUrl = "whatsapp://send?phone=+966$phone&text=$message";
    print(_whatsAppUrl);
    if (await canLaunch(_whatsAppUrl)) {
      await launch(_whatsAppUrl);
    } else {
      throw '?????? ?????? ????';
    }
  }

  static void launchYoutube({required String url}) async {
    if (Platform.isIOS) {
      await launch('$url', forceSafariVC: false);
    } else {
      await launch(url);
    }
  }

  static void callPhone({phone}) async {
    await launch("tel:$phone");
  }

  static void sendMail(mail) async {
    await launch("mailto:$mail");
  }

  static void shareApp(url) {
    LoadingDialog.showLoadingDialog();
    Share.share(url).whenComplete(() {
      EasyLoading.dismiss();
    });
  }

  static Future<File?> getImage() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.image);

    if (result != null) {
      List<File> files = result.paths.map((path) => File("$path")).toList();
      return await compressAndGetFile(files.first);
    } else {
      return null;
    }
  }

  static Future<List<File>> getImages() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: true, type: FileType.image);
    if (result != null) {
      List<File> files = result.paths.map((path) => File("$path")).toList();
      return await compressImages(files);
    } else {
      return [];
    }
  }

  static Future<List<File>> compressImages(List<File> images)async{
    List<File> results = [];
    if (images.length > 0) {
     for(int i=0;i<images.length;i++){
       var item = await compressAndGetFile(File(images[i].path));
       if(item!=null) results.add(item);
     }
    }
    return results;
  }

  static Future<File?> compressAndGetFile(File file) async {
    String dir = (await getApplicationDocumentsDirectory()).path;
    num size = file.lengthSync()/2048;
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path, "$dir/${file.path.split("/").last}",
      quality: size>=2?60:size>=1?70:80,
      rotate: 360,
    );

    print("============================> ${file.lengthSync()}");
    print("============================> ${result!.lengthSync()}");
    return result;
  }


  static Future<File?> getVideo() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.video);

    if (result != null) {
      List<File> files = result.paths.map((path) => File("$path")).toList();
      return await compressAndGetFile(files.first);
    } else {
      return null;
    }
  }

  static void copToClipboard(
      {required String text, required GlobalKey<ScaffoldState> scaffold}) {
    if (text.trim().isEmpty) {
      LoadingDialog.showToastNotification("???? ???????? ???????????? ??????????");
      return;
    } else {
      Clipboard.setData(ClipboardData(text: "$text")).then((value) {
        LoadingDialog.showToastNotification("???? ?????????? ??????????");
      });
    }
  }

  static Future<bool> askForPermission(Location location) async {
    var permission = await location.hasPermission();
    if (permission == PermissionStatus.deniedForever) {
      return false;
    } else if (permission == PermissionStatus.denied) {
      permission = await location.requestPermission();
      if (permission == PermissionStatus.denied ||
          permission == PermissionStatus.deniedForever) {
        return false;
      }
    }
    return true;
  }

  static Future<LocationData?> getCurrentLocation() async {
    final location = new Location();
    bool permission = await askForPermission(location);
    late LocationData current;
    if (permission) {
      current = await location.getLocation();
    }
    return current;
  }

  static void navigateToMapWithDirection(
      {required String lat,
      required String lng,
      required BuildContext context}) async {
    final availableMaps = await MapLauncher.installedMaps;
    LocationData? loc = await getCurrentLocation();
    if (availableMaps.length > 0 && loc != null) {
      await availableMaps.first.showDirections(
        destinationTitle: "destination",
        origin: Coords(loc.latitude!, loc.longitude!),
        destination: Coords(double.parse(lat), double.parse(lng)),
      );
    } else {
      LoadingDialog.showSimpleToast("???? ???????????? ?????????? ????????");
    }
  }

  static void navigateToLocationAddress(BuildContext context, LocationCubit locCubit) async {
    FocusScope.of(context).requestFocus(FocusNode());
    LoadingDialog.showLoadingDialog();
    var current = await Utils.getCurrentLocation();
    LocationModel locationModel = locCubit.state.model;
    if (current != null) {
      locationModel = LocationModel("${current.latitude}", "${current.longitude}", "");
    }
    double lat = double.parse(locationModel.lat);
    double lng = double.parse(locationModel.lng);
    String address = await getAddress(LatLng(lat, lng), context);
    locationModel.address = address;
    locCubit.onLocationUpdated(locationModel);
    EasyLoading.dismiss();
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (cxt) => BlocProvider.value(
          value: locCubit,
          child: LocationAddress(),
        ),
      ),
    );
  }

  static Future<String> getAddress(LatLng latLng, BuildContext context) async {
    final coordinates = new Coordinates(latLng.latitude, latLng.longitude);
    List<Address> addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    print("${first.featureName} : ${first.addressLine}");
    return first.addressLine;
  }

  static String convertDigitsToLatin(String s) {
    var sb = new StringBuffer();
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        //Arabic digits
        case '\u0660':
          sb.write('0');
          break;
        case '\u0661':
          sb.write('1');
          break;
        case '\u0662':
          sb.write('2');
          break;
        case '\u0663':
          sb.write('3');
          break;
        case '\u0664':
          sb.write('4');
          break;
        case '\u0665':
          sb.write('5');
          break;
        case '\u0666':
          sb.write('6');
          break;
        case '\u0667':
          sb.write('7');
          break;
        case '\u0668':
          sb.write('8');
          break;
        case '\u0669':
          sb.write('9');
          break;
        default:
          sb.write(s[i]);
          break;
      }
    }
    return sb.toString();
  }
}
