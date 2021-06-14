part of 'SelectDeptImports.dart';


class SelectDept extends StatefulWidget {
  @override
  _SelectDeptState createState() => _SelectDeptState();
}

class _SelectDeptState extends State<SelectDept>{

   SelectDeptData selectDeptData = new SelectDeptData();

   @override
   Widget build(BuildContext context) {
     return AuthScaffold(
       child: ListView(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         children: [
           HeaderLogo(haveBack: false,),
           BuildUserText(),
           BuildButtonList(),
         ],
       ),
     );
   }

}

