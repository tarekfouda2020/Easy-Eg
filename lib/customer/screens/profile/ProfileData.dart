part of 'ProfileImports.dart';

class ProfileData{
  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController mail = new TextEditingController();

  final GenericBloc<File?> imageCubit = new GenericBloc(null);

  setInitUserData(BuildContext context){
    var user = context.read<UserCubit>().state.model.customerModel;
    name.text=user!.userName;
    phone.text=user.phone;
    mail.text=user.email;
  }

  setProfileImage()async{
    var image = await Utils.getImage();
    if (image!=null) {
      imageCubit.onUpdateData(image);
    }
  }

  setUpdateProfile(BuildContext context)async{
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      UpdateCustomerModel model = new UpdateCustomerModel(
        phone: phone.text,
        name: name.text,
        mail: mail.text,
        image: imageCubit.state.data,
      );
      await CustomerRepository(context).updateProfile(model);
      btnKey.currentState!.animateReverse();
    }
  }

}