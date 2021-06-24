part of 'RegisterWidgetsImports.dart';

class BuildRegisterForm extends StatelessWidget {
  final RegisterData registerData;

  const BuildRegisterForm({required this.registerData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(bottom: 30),
      child: Form(
        key: registerData.formKey,
        child: Column(
          children: [
            LabelTextField(
              label: tr(context,"name"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.name,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: tr(context,"phone"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.phone,
              type: TextInputType.phone,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
            ),
            LabelTextField(
              label: tr(context,"email"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.mail,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmail(context),
            ),
            LabelTextField(
              label: tr(context,"password"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.pass,
              type: TextInputType.text,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              isPassword: true,
              validate: (value) => value!.validatePassword(context),
            ),
            LabelTextField(
              label: tr(context,"confirmPass"),
              margin: EdgeInsets.only(top: 15),
              controller: registerData.confirm,
              type: TextInputType.text,
              action: TextInputAction.done,
              borderColor: MyColors.grey,
              isPassword: true,
              validate: (value) => value!.validatePasswordConfirm(context,pass: registerData.pass.text),
              onSubmit: ()=>registerData.setRegisterCustomer(context),
            ),
          ],
        ),
      ),
    );
  }
}
