part of 'ChangePasswordImports.dart';

class ChangePassword extends StatefulWidget {
  final Color color;

  const ChangePassword({required this.color});
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final ChangePasswordData changePasswordData = new ChangePasswordData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title:tr(context,"changePassword"),color: widget.color,) ,
      body: LinearContainer(
        color: widget.color,
        child: Column(
          children: [
            Flexible(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: [
                  BuildChangeForm(changePasswordData: changePasswordData),
                ],
              ),
            ),
            BuildSaveButton(changePasswordData: changePasswordData,color: widget.color,),
          ],
        ),
      ),
    );
  }
}
