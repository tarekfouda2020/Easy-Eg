part of 'ThirdScreenImports.dart';

class ThirdScreen extends StatefulWidget {
  final ProviderRegisterData registerData;

  const ThirdScreen({required this.registerData});
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen>{

  late ThirdScreenData thirdScreenData;


  @override
  void initState() {
    thirdScreenData = widget.registerData.thirdScreenData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                HeaderLogo(haveBack: false),
                BuildHeaderText(),
                BuildLocationForm(finishRegisterData: thirdScreenData),
              ],
            ),
          ),
          BuildFinishRegisterButton(
            registerData: widget.registerData,
          ),
        ],
      ),
    );
  }
}

