part of 'ContactUsImports.dart';

class ContactUsData{

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController note = new TextEditingController();

  final GenericBloc<List<SocialModel>> socialCubit =new GenericBloc([]);

  fetchData(BuildContext context, {bool refresh = true})async{
    var data = await CustomerRepository(context).getSocialLinks(refresh);
    socialCubit.onUpdateData(data);
  }

}