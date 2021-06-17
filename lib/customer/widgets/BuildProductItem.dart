import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/widgets/CachedImage.dart';
import 'package:base_flutter/general/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildProductItem extends StatelessWidget {

  final Color color;

  const BuildProductItem({required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>AutoRouter.of(context).push(ProductDetailsRoute(color: color)),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyText(title: "اسم القاعة", color: MyColors.white, size: 12),
                  Container(
                    width: 27,
                    height: 27,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white60, shape: BoxShape.circle,),
                    child: Icon(
                      Icons.favorite_border,
                      size: 17,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 140,
              child: Row(
                children: [
                  Expanded(
                    child: CachedImage(
                      url:
                          "https://images.unsplash.com/photo-1563694983011-6f4d90358083?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
                      borderColor: MyColors.header,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: CachedImage(
                      url:
                          "https://images.unsplash.com/photo-1604639168969-02843477dce3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80",
                      borderColor: MyColors.header,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
