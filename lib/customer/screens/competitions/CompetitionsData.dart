part of 'CompetitionsImports.dart';

class CompetitionsData {
  final GlobalKey<FormState> formKey = new GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = new GlobalKey();
  final GlobalKey<DropdownSearchState<DropDownModel?>> govern = new GlobalKey();

  final TextEditingController name = new TextEditingController();
  final TextEditingController phone = new TextEditingController();
  final TextEditingController address = new TextEditingController();

  final GenericBloc<DropDownModel?> comCubit = new GenericBloc(null);
  final GenericBloc<bool> faceCubit = new GenericBloc(false);
  final GenericBloc<bool> youtubeCubit = new GenericBloc(false);
  final GenericBloc<List<SocialModel>> socialCubit = new GenericBloc([]);

  DropDownModel? governModel;

  fetchData(BuildContext context,int id, {bool refresh = true}) async {
    LoadingDialog.showLoadingDialog();
    var data = await CustomerRepository(context).getCompetitions(id, refresh);
    comCubit.onUpdateData(data);
    EasyLoading.dismiss();
  }

  fetchSocialData(BuildContext context, {bool refresh = true}) async {
    var data = await CustomerRepository(context).getSocialLinks(refresh);
    socialCubit.onUpdateData(data);
  }

  onGovernChange(DropDownModel? model,BuildContext context) {
    if (model!=null) {
      governModel = model;
      fetchData(context, model.id);
    }
  }

  setSendSubscribe(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      AddCompetitionModel model = new AddCompetitionModel(
        name: name.text,
        phone: phone.text,
        location: address.text,
        followFacebook: faceCubit.state.data,
        followYoutube: youtubeCubit.state.data,
        // governId: governModel?.id,
      );

      var result = await CustomerRepository(context).addCompetition(model);
      if (result) {
        name.text = "";
        phone.text = "";
        address.text = "";
        faceCubit.onUpdateData(false);
        youtubeCubit.onUpdateData(false);
      }

      btnKey.currentState!.animateReverse();
    }
  }
}
