part of 'TermsImports.dart';


class Terms extends StatefulWidget {
  final Color color;

  const Terms({required this.color});
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> with TermsData {

  @override
  void initState() {
    fetchData(context,refresh: false);
    fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: tr(context,"termsAndConditions"),color: widget.color,),
      body: BlocBuilder<GenericBloc<String>,GenericState<String>>(
        bloc: termsCubit,
        builder: (_,state){
          if(state is GenericUpdateState){
            return BuildTermsView(text: state.data,color: widget.color,);
          }else{
            return LoadingDialog.showLoadingView(color: widget.color);
          }
        },
      ),
    );

  }
}
