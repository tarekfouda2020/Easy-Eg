part of 'LanguagesImports.dart';


class LanguagesData{

  final GenericBloc<String?> langCubit = new GenericBloc(null);

  setLanguage(BuildContext context,Object? lang){
    langCubit.onUpdateData(lang.toString());
    Utils.changeLanguage(lang.toString(), context);
  }

}