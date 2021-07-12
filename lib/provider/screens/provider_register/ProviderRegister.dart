part of 'ProviderRegisterImports.dart';

class ProviderRegister extends StatefulWidget {
  @override
  _ProviderRegisterState createState() => _ProviderRegisterState();
}

class _ProviderRegisterState extends State<ProviderRegister>{

  final ProviderRegisterData registerData = new ProviderRegisterData();

  @override
   Widget build(BuildContext context) {
     return AuthScaffold(
       child: LinearContainer(
         color: MyColors.primary,
         child: PageView(
           controller: registerData.controller,
           children: [
             FirstScreen(registerData: registerData),
             SecondScreen(registerData: registerData),
             ThirdScreen(registerData: registerData)
           ],
         ),
       ),

     );
   }

}

