part of 'SelectUserImports.dart';

class SelectUser extends StatefulWidget {
  @override
  _SelectUserState createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  SelectUserData selectUserData = SelectUserData();

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
