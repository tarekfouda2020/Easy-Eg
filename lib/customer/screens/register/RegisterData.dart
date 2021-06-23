part of 'RegisterImports.dart';

class RegisterData{

  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController mail = new TextEditingController();
  final TextEditingController pass = new TextEditingController();
  final TextEditingController confirm = new TextEditingController();



  setRegisterCustomer(BuildContext context)async{
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      CustomerRegisterModel model = new CustomerRegisterModel(
        userName: name.text,
        phone: phone.text,
        email: mail.text,
          deviceType: Platform.isIOS?"ios":"android",
        password: pass.text,
        projectName: "Easy"
      );
      await CustomerRepository(context).registerUser(model);
      btnKey.currentState!.animateReverse();
    }
  }

}