import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:flutter/material.dart';


class AuthScaffold extends StatefulWidget {
  final Widget child;

  const AuthScaffold({required this.child});
  @override
  _AuthScaffoldState createState() => _AuthScaffoldState();
}

class _AuthScaffoldState extends State<AuthScaffold>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [MyColors.primary, MyColors.white],
              begin: Alignment.bottomCenter,

            )),
        child: widget.child
      ),

    );
  }
}

