part of 'ContactUsWidgetsImports.dart';

class BuildContactForm extends StatelessWidget {
  final ContactUsData contactUsData;

  const BuildContactForm({required this.contactUsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
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
              label: "رقم الجوال",
              margin: EdgeInsets.only(top: 15),
              controller: contactUsData.phone,
              type: TextInputType.phone,
              action: TextInputAction.next,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
            ),
            RichTextFiled(
              label: "الرسالة",
              margin: EdgeInsets.only(top: 15),
              controller: contactUsData.note,
              type: TextInputType.multiline,
              action: TextInputAction.newline,
              borderColor: MyColors.grey,
              validate: (value) => value!.validatePhone(context),
              max: 5,
            ),
          ],
        ),
      ),
    );
  }
}
