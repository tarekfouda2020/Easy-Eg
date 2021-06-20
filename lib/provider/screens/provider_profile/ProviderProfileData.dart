part of 'ProviderProfileImports.dart';

class ProviderProfileData{
  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController face = new TextEditingController();
  final TextEditingController insta = new TextEditingController();
  final TextEditingController logo = new TextEditingController();
  final TextEditingController desc = new TextEditingController();
  final TextEditingController video = new TextEditingController();
  final TextEditingController images = new TextEditingController();

  final GenericBloc<File?> imageCubit = new GenericBloc(null);

  setProfileImage()async{
    var image = await Utils.getImage();
    if (image!=null) {
      imageCubit.onUpdateData(image);
    }
  }

}