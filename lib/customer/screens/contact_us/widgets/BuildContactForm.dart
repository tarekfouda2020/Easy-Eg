part of 'ContactUsWidgetsImports.dart';

class BuildContactForm extends StatelessWidget {
  final ContactUsData contactUsData;
  final Color color;
  const BuildContactForm({required this.contactUsData, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: contactUsData.formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                Res.logo,
                width: 100,
                height: 100,
              ),
            ),
            LabelTextField(
              label: "الاسم",
              margin: EdgeInsets.only(top: 15),
              controller: contactUsData.name,
              type: TextInputType.name,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
            ),
            LabelTextField(
              label: "البريد الالكتروني",
              margin: EdgeInsets.only(top: 15),
              controller: contactUsData.mail,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmail(context),
            ),
            RichTextFiled(
              label: "الرسالة",
              margin: EdgeInsets.only(top: 15),
              controller: contactUsData.note,
              type: TextInputType.multiline,
              action: TextInputAction.newline,
              borderColor: MyColors.grey,
              validate: (value) => value!.validateEmpty(context),
              max: 5,
            ),

            BuildContactAction(contactUsData: contactUsData,color: color,),
          ],
        ),
      ),
    );
  }
}
