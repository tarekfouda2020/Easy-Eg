part of 'RegisterImports.dart';

class RegisterData{

  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey<CustomButtonState>();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController mail = new TextEditingController();
  final TextEditingController pass = new TextEditingController();
  final TextEditingController confirm = new TextEditingController();
}