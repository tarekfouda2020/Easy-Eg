part of 'ForgetPasswordWidgetsImports.dart';

class BuildFormInputs extends StatelessWidget {
  final ForgerPasswordData forgerPasswordData;

  const BuildFormInputs({required this.forgerPasswordData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: forgerPasswordData.formKey,
        child: LabelTextField(
          label: tr(context,"phone"),
          controller: forgerPasswordData.phone,
          action: TextInputAction.done,
          type: TextInputType.number,
          borderColor: MyColors.grey,
          validate: (value) => value!.validatePhone(context),
          onSubmit: ()=> forgerPasswordData.onForgetPassword(context),
        ),
      ),
    );
  }
}
