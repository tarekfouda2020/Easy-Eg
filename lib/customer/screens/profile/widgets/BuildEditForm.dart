part of 'ProfileWidgetImports.dart';

class BuildEditForm extends StatelessWidget {
  final ProfileData profileData;

  const BuildEditForm({required this.profileData});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: profileData.formKey,
        child: Column(
          children: [
            LabelTextField(
              label: tr(context,"name"),
              margin: EdgeInsets.only(top: 15),
              controller: profileData.name,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: tr(context,"phone"),
              margin: EdgeInsets.only(top: 15),
              controller: profileData.phone,
              type: TextInputType.phone,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
            ),
            LabelTextField(
              label: tr(context,"email"),
              margin: EdgeInsets.only(top: 15),
              controller: profileData.mail,
              type: TextInputType.emailAddress,
              action: TextInputAction.done,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmail(context),
              onSubmit: ()=>profileData.setUpdateProfile(context),
            ),
          ],
        ),
      ),
    );
  }
}

