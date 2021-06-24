part of 'ChangePassWidgetsImports.dart';

class BuildChangeForm extends StatelessWidget {
  final ChangePasswordData changePasswordData;

  const BuildChangeForm({required this.changePasswordData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: changePasswordData.formKey,
      child: Column(
        children: [
          LabelTextField(
            label: tr(context,"oldPassword"),
            controller: changePasswordData.oldPassword,
            margin: const EdgeInsets.symmetric(vertical: 5),
            type: TextInputType.name,
            borderColor: MyColors.grey,
            validate: (value) => value!.validateEmpty(context),
            isPassword: true,
            action: TextInputAction.next,
          ),
          LabelTextField(
            label: tr(context, "newPassword"),
            controller: changePasswordData.newPassword,
            margin: const EdgeInsets.symmetric(vertical: 5),
            type: TextInputType.name,
            borderColor: MyColors.grey,
            validate: (value) => value!.validatePassword(context),
            isPassword: true,
            action: TextInputAction.next,
          ),
          LabelTextField(
            label: tr(context,"confirmNewPassword"),
            controller: changePasswordData.confirmNewPassword,
            margin: const EdgeInsets.symmetric(vertical: 5),
            type: TextInputType.name,
            borderColor: MyColors.grey,
            validate: (value) => value!.validatePasswordConfirm(context,
                pass: changePasswordData.newPassword.text),
            isPassword: true,
            action: TextInputAction.done,
            onSubmit: ()=> changePasswordData.setChangePassword(context),
          ),
        ],
      ),
    );
  }
}
