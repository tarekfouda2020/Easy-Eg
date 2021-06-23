part of 'ProviderRegisterImports.dart';

class ProviderRegisterData{

  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController face = new TextEditingController();
  final TextEditingController insta = new TextEditingController();
  final TextEditingController logo = new TextEditingController();
  final TextEditingController desc = new TextEditingController();
  final TextEditingController video = new TextEditingController();
  final TextEditingController pass = new TextEditingController();
  final TextEditingController confirm = new TextEditingController();
  final TextEditingController images = new TextEditingController();

  final GenericBloc<File?> imageCubit = new GenericBloc(null);
  final GenericBloc<int> catCubit = new GenericBloc(0);
  final GenericBloc<List<SubCategoryModel>> subCatsCubit = new GenericBloc([]);

  setProfileImage()async{
    var image = await Utils.getImage();
    if (image!=null) {
      imageCubit.onUpdateData(image);
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

  }

}