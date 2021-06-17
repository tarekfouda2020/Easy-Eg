part of 'ProfileWidgetImports.dart';

class BuildEditForm extends StatelessWidget {
  final ProfileData profileData;

  const BuildEditForm({required this.profileData});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            LabelTextField(
              label: "الاسم",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.name,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: "رقم الجوال",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.phone,
              type: TextInputType.phone,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
            ),
            LabelTextField(
              label: "البريد الالكتروني",
              margin: EdgeInsets.only(top: 15),
              controller: profileData.mail,
              type: TextInputType.emailAddress,
              action: TextInputAction.done,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
              onSubmit: (){},
            ),
          ],
        ),
      ),
    );
  }
}

