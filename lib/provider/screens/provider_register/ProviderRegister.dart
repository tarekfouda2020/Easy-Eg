part of 'ProviderRegisterImports.dart';

class ProviderRegister extends StatefulWidget {
  @override
  _ProviderRegisterState createState() => _ProviderRegisterState();
}

class _ProviderRegisterState extends State<ProviderRegister>{

  final ProviderRegisterData registerData = new ProviderRegisterData();


  @override
  void initState() {
    registerData.thirdScreenData.subCatsCubit.onUpdateData([]);
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
     return PageView(
       controller: registerData.controller,
       physics: NeverScrollableScrollPhysics(),
       children: [
         FirstScreen(registerData: registerData),
         SecondScreen(registerData: registerData),
         ThirdScreen(registerData: registerData)
       ],
     );
   }

}

