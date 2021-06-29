part of 'NotificationWidgetImports.dart';

class BuildNotifyItem extends StatelessWidget {
  final NotifyModel model;
  final NotificationsData notificationsData;

  const BuildNotifyItem({required this.model, required this.notificationsData});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> notificationsData.notifyNavigate(context, model),
      child: Container(
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
      ),
    );
  }
}
