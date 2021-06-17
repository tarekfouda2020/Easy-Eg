part of 'AboutImports.dart';


class About extends StatefulWidget {
  final Color color;

  const About({required this.color});
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with AboutData {


  @override
  void initState() {
    fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'عن التطبيق',color: widget.color,),
      body: BlocBuilder<GenericBloc<String>,GenericState<String>>(
        bloc: aboutCubit,
        builder: (_,state){
          if(state is GenericUpdateState){
            return BuildAboutView(text: state.data,color: widget.color,);
          }else{
            return LoadingDialog.showLoadingView();
          }
        },
      ),
    );
  }
}
