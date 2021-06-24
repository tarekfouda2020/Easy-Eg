part of 'ProviderRegisterImports.dart';

class ProviderRegisterData{

  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

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
  final GenericBloc<int> catCubit = new GenericBloc(0);
  final GenericBloc<List<SubCategoryModel>> subCatsCubit = new GenericBloc([]);

  setLogoImage()async{
    var image = await Utils.getImage();
    if (image!=null) {
      logoCubit.onUpdateData(image);
    }
  }

  setImages()async{
    var image = await Utils.getImages();
    if (image.length>0) {
      imagesCubit.onUpdateData(image);
    }
  }

  onCategorySelected(BuildContext context, CategoryModel model){
    catCubit.onUpdateData(model.id);
    subCatsCubit.onUpdateData(model.subCategory);
  }

  setSelectSubCat(int index){
    subCatsCubit.state.data[index].selected=!subCatsCubit.state.data[index].selected;
    subCatsCubit.onUpdateData(subCatsCubit.state.data);
  }

  setRegisterProvider(BuildContext context)async{
    if (formKey.currentState!.validate()) {
      var subCats = subCatsCubit.state.data.where((element) => element.selected).
        map((e) => e.id.toString()).toList();
      if (subCats.length==0) {
        LoadingDialog.showSimpleToast(tr(context,"PlzSelectYourServices"));
        return;
      }  
      ProviderRegisterModel model = new ProviderRegisterModel(
        userName: name.text,
        phone: phone.text,
        info: desc.text,
        linkVideo: video.text,
        projectName: "Easy",
        deviceType: Platform.isIOS?"ios":"android",
        password: pass.text,
        email: mail.text,
        logoImg: logoCubit.state.data,
        images: imagesCubit.state.data,
        idsSubCat: json.encode(subCats)
      );
      print("=======================>${model.toJson()}");
      AutoRouter.of(context).push(CompleteRegisterRoute(model: model));
    }
  }

}