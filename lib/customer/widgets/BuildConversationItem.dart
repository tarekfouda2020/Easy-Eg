
import 'package:base_flutter/customer/models/ConversationModel.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/widgets/CachedImage.dart';
import 'package:base_flutter/general/widgets/MyText.dart';
import 'package:flutter/material.dart';

class BuildConversationItem extends StatelessWidget {
  final ConversationModel model;

  const BuildConversationItem({required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          CachedImage(
            url: model.userImg,
            width: 60,
            height: 60,
            borderColor: MyColors.greyWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          SizedBox(width: 5),
          Container(
            width: MediaQuery.of(context).size.width-100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      title:  model.userName,
                      color: MyColors.black,
                      size: 12,
                    ),
                    MyText(
                      title: model.date,
                      color: Colors.blueAccent,
                      size: 8,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                MyText(
                  title: model.lastMsg ,
                  color: MyColors.black,
                  size: 8,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
