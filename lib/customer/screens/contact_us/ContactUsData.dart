part of 'ContactUsImports.dart';

class ContactUsData{

  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey();

  final TextEditingController name = new TextEditingController();
  final TextEditingController mail = new TextEditingController();
  final TextEditingController note = new TextEditingController();

  final GenericBloc<List<SocialModel>> socialCubit =new GenericBloc([]);

  fetchData(BuildContext context, {bool refresh = true})async{
    var data = await CustomerRepository(context).getSocialLinks(refresh);
    socialCubit.onUpdateData(data);
  }

  setContactUs(BuildContext context)async{
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      var result = await CustomerRepository(context)
          .contactUs(name.text, mail.text, note.text);
      if (result) {
        name.text="";
        mail.text="";
        note.text="";
      }
      btnKey.currentState!.animateReverse();
    }
  }

}