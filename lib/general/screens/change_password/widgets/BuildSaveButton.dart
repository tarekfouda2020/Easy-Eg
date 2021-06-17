part of 'ChangePassWidgetsImports.dart';

class BuildSaveButton extends StatelessWidget {

  final ChangePasswordData changePasswordData;
  final Color color;

  const BuildSaveButton({required this.changePasswordData,required this.color});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: changePasswordData.btnKey,
      title: 'حفظ ',
      color: color,
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      onTap: () => changePasswordData.setChangePassword(context),
    );
  }
}
