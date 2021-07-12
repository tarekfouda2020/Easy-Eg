part of 'FirstScreenImports.dart';

class FirstScreenData {
  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey =
      new GlobalKey<CustomButtonState>();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController mail = new TextEditingController();
  final TextEditingController logo = new TextEditingController();
  final TextEditingController desc = new TextEditingController();
  final TextEditingController video = new TextEditingController();
  final TextEditingController pass = new TextEditingController();
  final TextEditingController confirm = new TextEditingController();
  final TextEditingController images = new TextEditingController();

  final GenericBloc<List<File>> imagesCubit = new GenericBloc([]);
  final GenericBloc<File?> logoCubit = new GenericBloc(null);

  setLogoImage() async {
    var image = await Utils.getImage();
    if (image != null) {
      logoCubit.onUpdateData(image);
    }
  }

  setImages() async {
    var image = await Utils.getImages();
    if (image.length > 0) {
      imagesCubit.onUpdateData(image);
    }
  }

  setRegisterProvider(
      BuildContext context, ProviderRegisterData registerData) async {
    if (formKey.currentState!.validate()) {
      ProviderRegisterModel model = registerData.model;
      model.userName = name.text;
      model.phone = phone.text;
      model.info = desc.text;
      model.linkVideo = video.text;
      model.projectName = "Easy";
      model.deviceType = Platform.isIOS ? "ios" : "android";
      model.password = pass.text;
      model.email = mail.text;
      model.logoImg = logoCubit.state.data;
      model.images = imagesCubit.state.data;
      registerData.goToNextPage();
    }
  }
}
