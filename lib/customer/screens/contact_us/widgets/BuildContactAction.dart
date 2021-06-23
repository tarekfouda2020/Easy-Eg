part of 'ContactUsWidgetsImports.dart';

class BuildContactAction extends StatelessWidget {
  final ContactUsData contactUsData;
  final Color color;

  const BuildContactAction({required this.contactUsData, required this.color});
  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      btnKey: contactUsData.btnKey,
      title: "ارسال",
      color: color,
      margin: EdgeInsets.symmetric(vertical: 20),
      onTap: ()=> contactUsData.setContactUs(context),
    );
  }
}

