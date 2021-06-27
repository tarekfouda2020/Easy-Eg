import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/models/product_model.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/widgets/CachedImage.dart';
import 'package:base_flutter/general/widgets/MyText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildProductItem extends StatelessWidget {

  final Color color;
  final ProductModel model;
  final Function()? onFavTap;
  final Function() onTap;
  const BuildProductItem({required this.color,required this.model, this.onFavTap, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 20),
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
                  MyText(title: model.name, color: MyColors.white, size: 12),
                  InkWell(
                    onTap: onFavTap,
                    child: Container(
                      width: 27,
                      height: 27,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white60, shape: BoxShape.circle,),
                      child: Icon(
                        model.checkWishList? Icons.favorite :Icons.favorite_border,
                        size: 17,
                        color: Colors.red,
                      ),
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
                      url: model.logoImg,
                      borderColor: MyColors.header,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: CachedImage(
                      url: model.mainImg,
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
