part of 'RepeatedQuestionsImports.dart';


class RepeatedQuestionsData{

 final GenericBloc<List<QuestionModel>> dataCubit = new GenericBloc([]);

 fetchData(BuildContext context,{bool refresh = true})async{
   var data = await CustomerRepository(context).getRepeatedQuestions(refresh);
   dataCubit.onUpdateData(data);
 }

 setExpandItem(int index){
   dataCubit.state.data[index].expanded=!dataCubit.state.data[index].expanded;
   dataCubit.onUpdateData(dataCubit.state.data);
 }

}