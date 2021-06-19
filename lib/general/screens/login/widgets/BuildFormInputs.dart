part of 'LoginWidgetsImports.dart';

class BuildFormInputs extends StatelessWidget {
  final LoginData loginData;

  const BuildFormInputs({required this.loginData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: loginData.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelTextField(
              label: tr(context,"phone"),
              controller: loginData.phone,
              margin: const EdgeInsets.symmetric(vertical: 10),
              action: TextInputAction.next,
              type: TextInputType.phone,
              borderColor: Colors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: tr(context,"password"),
              controller: loginData.password,
              validate: (value) => value!.validateEmpty(context),
              isPassword: true,
              borderColor: Colors.grey,
              action: TextInputAction.done,
              onSubmit: () => loginData.userLogin(context),
            ),
          ],
        ),
      ),
    );
  }
}
