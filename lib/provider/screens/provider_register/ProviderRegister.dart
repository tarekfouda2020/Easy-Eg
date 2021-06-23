part of 'ProviderRegisterImports.dart';

class ProviderRegister extends StatefulWidget {
  @override
  _ProviderRegisterState createState() => _ProviderRegisterState();
}

class _ProviderRegisterState extends State<ProviderRegister>{

   ProviderRegisterData registerData = new ProviderRegisterData();

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
             BuildLoginAction()
           ],
         ),
       ),

     );
   }

}

