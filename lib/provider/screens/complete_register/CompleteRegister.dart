part of 'CompleteRegisterImports.dart';

class CompleteRegister extends StatefulWidget {
  final ProviderRegisterModel model;

  const CompleteRegister({required this.model});

  @override
  _CompleteRegisterState createState() => _CompleteRegisterState();
}

class _CompleteRegisterState extends State<CompleteRegister> {
  CompleteRegisterData completeRegisterData = new CompleteRegisterData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: LinearContainer(
        color: MyColors.primary,
        child: ListView(
          children: [
            HeaderLogo(),
            BuildText(),
            BuildRegisterForm(registerData: completeRegisterData),
            BuildRegisterButton(
              registerData: completeRegisterData,
              model: widget.model,
            ),
          ],
        ),
      ),
    );
  }
}
