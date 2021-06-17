
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:flutter/material.dart';

class LinearContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final EdgeInsets padding;

  const LinearContainer({required this.color, required this.child,this.padding = EdgeInsets.zero});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).requestFocus(FocusNode()),
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(.5), MyColors.white],
              begin: Alignment.bottomCenter,
            )),
        child: child,
      ),
    );
  }
}

