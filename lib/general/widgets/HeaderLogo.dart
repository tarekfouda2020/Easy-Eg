import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/res.dart';

class HeaderLogo extends StatelessWidget {
  final bool haveBack;

  const HeaderLogo({this.haveBack = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: haveBack? 200 : 200,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 10,
            child: Offstage(
              offstage: !haveBack,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: ()=>AutoRouter.of(context).pop(),
                      icon: Icon(Icons.arrow_back,size: 25,color: MyColors.primary,),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Image(
            height: 160,
            width: 200,
            image: AssetImage(Res.logo),
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
