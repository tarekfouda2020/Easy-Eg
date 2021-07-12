part of 'FirstScreenImports.dart';

class FirstScreen extends StatefulWidget {
  final ProviderRegisterData registerData;

  const FirstScreen({required this.registerData});

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  late FirstScreenData firstScreenData;

  @override
  void initState() {
    firstScreenData = widget.registerData.firstScreenData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: LinearContainer(
        color: MyColors.primary,
        child: ListView(
          children: [
            HeaderLogo(),
            BuildText(),
            BuildRegisterForm(
              registerData: widget.registerData,
            ),
            BuildRegisterButton(
              registerData: widget.registerData,
            ),
            BuildLoginAction()
          ],
        ),
      ),
    );
  }
}
