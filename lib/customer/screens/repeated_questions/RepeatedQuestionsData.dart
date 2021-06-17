part of 'RepeatedQuestionsImports.dart';


class RepeatedQuestionsData{

 final GenericBloc<List<QuestionModel>> dataCubit = new GenericBloc([]);

 List<QuestionModel> data = [
   QuestionModel(title: "هذا النص يمكن استبدالة بنص اخر",answer: "هذا النص يمكن استبدالة بنص اخر",expanded: false),
   QuestionModel(title: "هذا النص يمكن استبدالة بنص اخر",answer: "هذا النص يمكن استبدالة بنص اخر",expanded: false),
   QuestionModel(title: "هذا النص يمكن استبدالة بنص اخر",answer: "هذا النص يمكن استبدالة بنص اخر",expanded: false),
   QuestionModel(title: "هذا النص يمكن استبدالة بنص اخر",answer: "هذا النص يمكن استبدالة بنص اخر",expanded: false),
   QuestionModel(title: "هذا النص يمكن استبدالة بنص اخر",answer: "هذا النص يمكن استبدالة بنص اخر",expanded: false),
 ];

 setExpandItem(int index){
   dataCubit.state.data[index].expanded=!dataCubit.state.data[index].expanded;
   dataCubit.onUpdateData(dataCubit.state.data);
 }

}