
import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/widgets/CachedImage.dart';
import 'package:base_flutter/general/widgets/MyText.dart';
import 'package:base_flutter/provider/models/provider_order_model.dart';
import 'package:base_flutter/provider/screens/provider_order_details/ProviderOrderDetailsImports.dart';
import 'package:flutter/material.dart';

class BuildOrderCard extends StatelessWidget {
  final Color color;
  final ProviderOrderModel model;

  const BuildOrderCard({required this.color, required this.model});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedElevation: 0,
      openElevation: 0,
      closedColor: Colors.transparent,
      transitionDuration: Duration(milliseconds: 800),
      transitionType: ContainerTransitionType.fadeThrough,
      openBuilder: (context, action) => ProviderOrderDetails(color:color, id: model.id,model: model,),
      closedBuilder: (context, action) {
        return Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedImage(
                url: model.userImg,
                width: 60,
                height: 60,
              ),
              SizedBox(width: 5),
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(title: model.userName, color: MyColors.black, size: 10),
                    SizedBox(height: 5),
                    MyText(
                        title: model.beneficiaryName,
                        color: color.withOpacity(.7),
                        size: 10),
                  ],
                ),
              ),
              Column(
                children: [
                  MyText(
                      title: "رقم الطلب", color: color.withOpacity(.7), size: 10),
                  MyText(title: "${model.id}", color: color.withOpacity(.7), size: 10),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
