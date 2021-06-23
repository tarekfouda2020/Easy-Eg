part of 'FinishRegisterImports.dart';

class FinishRegister extends StatefulWidget {
  final ProviderRegisterModel model;

  const FinishRegister({required this.model});

  @override
  _FinishRegisterState createState() => _FinishRegisterState();
}

class _FinishRegisterState extends State<FinishRegister> {
  FinishRegisterData finishRegisterData = new FinishRegisterData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                HeaderLogo(),
                BuildHeaderText(),
                BuildLocationForm(finishRegisterData: finishRegisterData),
              ],
            ),
          ),
          BuildFinishRegisterButton(
            registerData: finishRegisterData,
            model: widget.model,
          ),
        ],
      ),
    );
  }
}
