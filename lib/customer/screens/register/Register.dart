part of 'RegisterImports.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>{

   RegisterData registerData = new RegisterData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: LinearContainer(
        color: MyColors.primary,
        child: ListView(
          children: [
            HeaderLogo(),
            BuildText(),
            BuildRegisterForm(registerData: registerData),
            BuildRegisterButton(registerData: registerData),
          ],
        ),
      ),

    );
  }
}

