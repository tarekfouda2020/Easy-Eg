part of 'LanguagesImports.dart';


class LanguagesData{

  final GenericBloc<String?> langCubit = new GenericBloc(null);

  setLanguage(BuildContext context,String lang)async{
    langCubit.onUpdateData(lang.toString());
    if (context.read<AuthCubit>().state.authorized) {
      await saveUserLanguage(context,lang);
    }
    await Utils.changeLanguage(lang.toString(), context);
  }

  Future<void> saveUserLanguage(BuildContext context,String lang)async{
    var result = await CustomerRepository(context).changeLanguage(lang);
    if (result) {
      var user = context.read<UserCubit>();
      user.state.model.lang=lang;
      var type = context.read<UserCubit>().state.model.type;
      if (type=="user") {
        user.state.model.customerModel!.lang=lang;
      }else{
        user.state.model.providerModel!.lang=lang;
      }
      user.onUpdateUserData(user.state.model);
      Utils.saveUserData(user.state.model);
    }
  }


}