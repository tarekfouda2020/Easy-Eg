part of 'SecondScreenImports.dart';

class SecondScreen extends StatefulWidget {
  final ProviderRegisterData registerData;

  const SecondScreen({required this.registerData});
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>{

  late SecondScreenData secondScreenData;


  @override
  void initState() {
    secondScreenData = widget.registerData.secondScreenData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: LinearContainer(
        color: MyColors.primary,
        child: ListView(
          children: [
            HeaderLogo(haveBack: false),
            BuildText(),
            BuildRegisterForm(registerData: secondScreenData),
            BuildRegisterButton(
              registerData: widget.registerData,
            ),
          ],
        ),
      ),
    );
  }
}

