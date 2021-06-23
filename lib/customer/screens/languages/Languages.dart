part of 'LanguagesImports.dart';

class Languages extends StatefulWidget {
  final Color color;

  const Languages({required this.color});

  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  LanguagesData languagesData = new LanguagesData();

  @override
  void initState() {
    var lang = context.read<LangCubit>().state.locale.languageCode;
    languagesData.langCubit.onUpdateData(lang);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: DefaultAppBar(
          title: "اللغة",
          color: widget.color,
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: LinearContainer(
        color: widget.color,
        child: BlocBuilder<GenericBloc<String?>, GenericState<String?>>(
          bloc: languagesData.langCubit,
          builder: (context, state) {
            return ListView(
              children: [
                ListTile(
                  title: MyText(
                    title: "العربية",
                    color: MyColors.black,
                    size: 12,
                  ),
                  leading: Image.asset(
                    Res.ksa,
                    width: 25,
                    height: 25,
                  ),
                  trailing: Radio<String>(
                    value: "ar",
                    groupValue: state.data,
                    onChanged: (value) => languagesData.setLanguage(context, value!),
                  ),
                ),
                Divider(color: MyColors.greyWhite),
                ListTile(
                  title: MyText(
                    title: "English",
                    color: MyColors.black,
                    size: 12,
                  ),
                  leading: Image.asset(
                    Res.usa,
                    width: 25,
                    height: 25,
                  ),
                  trailing: Radio<String>(
                    value: "en",
                    groupValue: state.data,
                    onChanged: (value) => languagesData.setLanguage(context, value!),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
