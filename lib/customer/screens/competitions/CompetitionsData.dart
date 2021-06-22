part of 'CompetitionsImports.dart';

class CompetitionsData{

  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController address = new TextEditingController();

  final GenericBloc<DropDownModel?> comCubit = new GenericBloc(null);
  final GenericBloc<bool> faceCubit =new GenericBloc(false);
  final GenericBloc<bool> youtubeCubit =new GenericBloc(false);

  fetchData(BuildContext context,{bool refresh = true})async{
    var data = await CustomerRepository(context).getCompetitions(refresh);
    comCubit.onUpdateData(data);
  }

  setSendSubscribe(BuildContext context)async{
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      AddCompetitionModel model = new AddCompetitionModel(
        name: name.text,
        phone: phone.text,
        location: address.text,
        followFacebook: faceCubit.state.data,
        followYoutupe: youtubeCubit.state.data
      );

      var result = await CustomerRepository(context).addCompetition(model);
      if (result) {
        name.text="";
        phone.text="";
        address.text="";
        faceCubit.onUpdateData(false);
        youtubeCubit.onUpdateData(false);
      }

      btnKey.currentState!.animateReverse();

    }
  }

}