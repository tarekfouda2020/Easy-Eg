part of 'SelectAuthImports.dart';

class SelectAuth extends StatefulWidget {
  @override
  _SelectAuthState createState() => _SelectAuthState();
}

class _SelectAuthState extends State<SelectAuth>{

   SelectAuthData selectAuthData = new SelectAuthData();

   @override
   Widget build(BuildContext context) {
     return AuthScaffold(
       child: ListView(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         children: [
           HeaderLogo(),
           BuildUserText(),
           BuildButtonList(),
         ],
       ),
     );
   }

}

