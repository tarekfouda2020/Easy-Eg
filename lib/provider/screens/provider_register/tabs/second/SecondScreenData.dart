part of 'SecondScreenImports.dart';

class SecondScreenData{
  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

  final TextEditingController nameAr = new TextEditingController();
  final TextEditingController nameEn = new TextEditingController();
  final TextEditingController face = new TextEditingController();
  final TextEditingController twitter = new TextEditingController();
  final TextEditingController insta = new TextEditingController();
  final TextEditingController telegram = new TextEditingController();
  final TextEditingController location = new TextEditingController();
  final TextEditingController cover = new TextEditingController();
  final TextEditingController mainImage = new TextEditingController();

  final GenericBloc<File?> coverCubit = new GenericBloc(null);
  final GenericBloc<File?> mainCubit = new GenericBloc(null);
  final LocationCubit locCubit = new LocationCubit();

  String? lat;
  String? lng;

  setCoverImage()async{
    var image = await Utils.getImage();
    if (image!=null) {
      coverCubit.onUpdateData(image);
    }
  }
  setMainImage()async{
    var image = await Utils.getImage();
    if (image!=null) {
      mainCubit.onUpdateData(image);
    }
  }

  setRegisterProvider(BuildContext context, ProviderRegisterData registerData)async{
    if (formKey.currentState!.validate()) {
      ProviderRegisterModel model = registerData.model;
      model.nameAr=nameAr.text;
      model.nameEn=nameEn.text;
      model.facebook=face.text;
      model.instagram=insta.text;
      model.telegram=telegram.text;
      model.twitter=twitter.text;
      model.whatsApp = "https://wa.me/${model.phone?.replaceFirst("0", "")}?text=مرحبا";
      model.coverImg=coverCubit.state.data;
      model.mainImg=mainCubit.state.data;
      model.location=location.text;
      model.lat=lat;
      model.lng=lng;
      registerData.goToNextPage();
    }
  }
}