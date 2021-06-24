part of 'ProviderProfileImports.dart';

class ProviderProfileData{

  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController mail = new TextEditingController();
  final TextEditingController logo = new TextEditingController();
  final TextEditingController desc = new TextEditingController();
  final TextEditingController video = new TextEditingController();
  final TextEditingController images = new TextEditingController();

  final GenericBloc<WorkImagesModel> imagesCubit = new GenericBloc(WorkImagesModel());
  final GenericBloc<File?> logoCubit = new GenericBloc(null);
  final GenericBloc<File?> profileImageCubit = new GenericBloc(null);
  final GenericBloc<int> catCubit = new GenericBloc(0);
  final GenericBloc<List<SubCategoryModel>> subCatsCubit = new GenericBloc([]);


  initProfileData(BuildContext context){
    var user = context.read<UserCubit>().state.model.providerModel;
    name.text=user!.name;
    phone.text=user.phone;
    mail.text=user.email;
    desc.text=user.info;
    logo.text=user.logoImg.split("/").last;
    video.text = user.linkVideo;
    // imagesCubit.state.data.existImages=user.images;
  }

  fetchSelectedCats(BuildContext context,{bool refresh = true})async{
    var data = await ProviderRepository(context).getCategories(refresh);
    context.read<CatsCubit>().onUpdateCats(data);
    catCubit.onUpdateData(data.where((element) => element.selected).first.id);
    subCatsCubit.onUpdateData(data.where((element) => element.selected).first.subCategory);
  }

  setProfileImage()async{
    var image = await Utils.getImage();
    if (image!=null) {
      profileImageCubit.onUpdateData(image);
    }
  }

  setLogoImage()async{
    var image = await Utils.getImage();
    if (image!=null) {
      logoCubit.onUpdateData(image);
    }
  }

  setImages()async{
    var lstImages = await Utils.getImages();
    if (lstImages.length>0) {
      imagesCubit.state.data.addedImages=lstImages;
      imagesCubit.onUpdateData(imagesCubit.state.data);
    }
  }

  setRemoveAddImage(File file){
    imagesCubit.state.data.addedImages.remove(file);
    imagesCubit.onUpdateData(imagesCubit.state.data);
  }

  onCategorySelected(BuildContext context, CategoryModel model){
    catCubit.onUpdateData(model.id);
    subCatsCubit.onUpdateData(model.subCategory);
  }

  setSelectSubCat(int index){
    subCatsCubit.state.data[index].selected=!subCatsCubit.state.data[index].selected;
    subCatsCubit.onUpdateData(subCatsCubit.state.data);
  }

}