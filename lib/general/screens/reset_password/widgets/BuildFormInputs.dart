part of 'ResetPasswordWidgetsImports.dart';

class BuildFormInputs extends StatelessWidget {
  final ResetPasswordData resetPasswordData;
  final String userId;

  const BuildFormInputs({required this.resetPasswordData,required this.userId});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: resetPasswordData.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelTextField(
              label: tr(context,"code"),
              controller: resetPasswordData.code,
              action: TextInputAction.next,
              type: TextInputType.number,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
              margin: const EdgeInsets.symmetric( vertical: 10),
            ),
            LabelTextField(
              label: tr(context,"newPass"),
              controller: resetPasswordData.newPassword,
              action: TextInputAction.next,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              isPassword: true,
              validate: (value) => value!.validatePassword(context),
              margin: const EdgeInsets.symmetric( vertical: 10),
            ),
            LabelTextField(
              label: tr(context,"confirmPassword"),
              controller: resetPasswordData.confirmNewPassword,
              action: TextInputAction.done,
              type: TextInputType.text,
              borderColor: MyColors.grey,
              isPassword: true,
              margin: const EdgeInsets.symmetric( vertical: 10),
              validate: (value) => value!.validatePasswordConfirm(context,
                  pass: resetPasswordData.newPassword.text),
              onSubmit: ()=> resetPasswordData.onResetPassword(context, userId),
            ),
          ],
        ),
      ),
    );
  }
}
