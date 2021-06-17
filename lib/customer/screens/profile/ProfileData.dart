part of 'ProfileImports.dart';

class ProfileData{
  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController mail = new TextEditingController();

  final GenericBloc<File?> imageCubit = new GenericBloc(null);

  setProfileImage()async{
    var image = await Utils.getImage();
    if (image!=null) {
      imageCubit.onUpdateData(image);
    }
  }

}