part of 'NotificationWidgetImports.dart';

class BuildNotifyItem extends StatelessWidget {
  final NotifyModel model;

  const BuildNotifyItem({required this.model});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          CachedImage(
            url: model.img,
            width: 60,
            height: 60,
            boxShape: BoxShape.circle,
            haveRadius: false,
            borderColor: MyColors.greyWhite,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 5,),
          Container(
            width: MediaQuery.of(context).size.width-100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(title: model.text, color: MyColors.black, size: 9,fontWeight: FontWeight.w500,),
                SizedBox(height: 2,),
                MyText(title: model.date, color: MyColors.blackOpacity, size: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
