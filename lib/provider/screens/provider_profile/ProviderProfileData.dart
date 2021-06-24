part of 'ProviderProfileImports.dart';

class ProviderProfileData {
  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey =
      new GlobalKey<CustomButtonState>();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController mail = new TextEditingController();
  final TextEditingController logo = new TextEditingController();
  final TextEditingController desc = new TextEditingController();
  final TextEditingController video = new TextEditingController();
  final TextEditingController images = new TextEditingController();

  final TextEditingController nameAr = new TextEditingController();
  final TextEditingController nameEn = new TextEditingController();
  final TextEditingController face = new TextEditingController();
  final TextEditingController twitter = new TextEditingController();
  final TextEditingController insta = new TextEditingController();
  final TextEditingController telegram = new TextEditingController();
  final TextEditingController location = new TextEditingController();
  final TextEditingController cover = new TextEditingController();
  final TextEditingController mainImage = new TextEditingController();

  final GenericBloc<WorkImagesModel> imagesCubit =
      new GenericBloc(WorkImagesModel());
  final GenericBloc<File?> logoCubit = new GenericBloc(null);
  final GenericBloc<File?> profileImageCubit = new GenericBloc(null);
  final GenericBloc<int> catCubit = new GenericBloc(0);
  final GenericBloc<List<SubCategoryModel>> subCatsCubit = new GenericBloc([]);

  final GenericBloc<File?> coverCubit = new GenericBloc(null);
  final GenericBloc<File?> mainCubit = new GenericBloc(null);
  final LocationCubit locCubit = new LocationCubit();

  String? lat;
  String? lng;

  initProfileData(BuildContext context) {
    var user = context.read<UserCubit>().state.model.providerModel;
    name.text = user!.userName;
    phone.text = user.phone;
    mail.text = user.email;
    desc.text = user.info;
    logo.text = user.logoImg.split("/").last;
    video.text = user.linkVideo;
    imagesCubit.state.data.existImages=user.imgList;
    nameAr.text = user.nameAr;
    nameEn.text = user.nameEn;
    face.text = user.facebook;
    twitter.text = user.twitter;
    telegram.text = user.telegram;
    insta.text = user.instagram;
    location.text = user.location;
    lat = user.lat;
    lng = user.lng;
    cover.text = user.coverImg.split("/").last;
    mainImage.text = user.mainImg.split("/").last;
  }

  fetchSelectedCats(BuildContext context, {bool refresh = true}) async {
    var data = await ProviderRepository(context).getCategories(refresh);
    context.read<CatsCubit>().onUpdateCats(data);
    catCubit.onUpdateData(data.where((element) => element.selected).first.id);
    subCatsCubit.onUpdateData(
        data.where((element) => element.selected).first.subCategory);
  }

  setProfileImage() async {
    var image = await Utils.getImage();
    if (image != null) {
      profileImageCubit.onUpdateData(image);
    }
  }

  setLogoImage() async {
    var image = await Utils.getImage();
    if (image != null) {
      logoCubit.onUpdateData(image);
    }
  }

  setImages() async {
    var lstImages = await Utils.getImages();
    if (lstImages.length > 0) {
      imagesCubit.state.data.addedImages = lstImages;
      imagesCubit.onUpdateData(imagesCubit.state.data);
    }
  }

  setCoverImage() async {
    var image = await Utils.getImage();
    if (image != null) {
      coverCubit.onUpdateData(image);
    }
  }

  setMainImage() async {
    var image = await Utils.getImage();
    if (image != null) {
      mainCubit.onUpdateData(image);
    }
  }

  setRemoveAddImage(File file) {
    imagesCubit.state.data.addedImages.remove(file);
    imagesCubit.onUpdateData(imagesCubit.state.data);
  }

  setRemoveExistImage(ImageModel model,BuildContext context)async {
    await ProviderRepository(context).removeImg(model.id);
    imagesCubit.state.data.existImages.remove(model);
    imagesCubit.onUpdateData(imagesCubit.state.data);
    var user = context.read<UserCubit>();
    user.state.model.providerModel!.imgList.remove(model);
    user.onUpdateUserData(user.state.model);
  }

  onCategorySelected(BuildContext context, CategoryModel model) {
    catCubit.onUpdateData(model.id);
    subCatsCubit.onUpdateData(model.subCategory);
  }

  setSelectSubCat(int index) {
    subCatsCubit.state.data[index].selected =
        !subCatsCubit.state.data[index].selected;
    subCatsCubit.onUpdateData(subCatsCubit.state.data);
  }

  setUpdateProvider(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var subCats = subCatsCubit.state.data
          .where((element) => element.selected)
          .map((e) => e.id.toString())
          .toList();
      if (subCats.length == 0) {
        LoadingDialog.showSimpleToast(tr(context,"PlzSelectYourServices"));
        return;
      }
      btnKey.currentState!.animateForward();
      ProviderRegisterModel model = new ProviderRegisterModel(
        userName: name.text,
        phone: phone.text,
        info: desc.text,
        linkVideo: video.text,
        projectName: "Easy",
        deviceType: Platform.isIOS ? "ios" : "android",
        email: mail.text,
        logoImg: logoCubit.state.data,
        images: imagesCubit.state.data.addedImages,
        idsSubCat: json.encode(subCats),
        nameAr: nameAr.text,
        nameEn: nameEn.text,
        facebook: face.text,
        instagram: insta.text,
        telegram: telegram.text,
        twitter: twitter.text,
        whatsApp: "https://wa.me/${phone.text.replaceFirst("0", "")}?text=مرحبا",
        coverImg: coverCubit.state.data,
        mainImg: mainCubit.state.data,
        location: location.text,
        lat: lat,
        lng: lng,
      );
      await ProviderRepository(context).updateProfile(model);
      btnKey.currentState!.animateReverse();
    }
  }
}
