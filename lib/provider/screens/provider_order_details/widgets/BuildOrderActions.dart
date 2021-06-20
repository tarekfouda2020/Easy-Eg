part of 'OrderDetailsWidgetImports.dart';

class BuildOrderActions extends StatelessWidget {
  final Color color;
  final int type;

  const BuildOrderActions({required this.color,required this.type});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Visibility(
        visible: type==1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DefaultButton(
              title: "قبول",
              color: color,
              width: MediaQuery.of(context).size.width*.4,
              onTap: () => AutoRouter.of(context).push(AcceptOrderSuccessRoute(color: color)),
            ),
            DefaultButton(
              title: "رفض",
              color: MyColors.red,
              width: MediaQuery.of(context).size.width*.4,
              onTap: () {},
            ),
          ],
        ),
        replacement: Column(
          children: [
            DefaultButton(
              title: "اجراء محادثة",
              color: color,
              margin: EdgeInsets.symmetric(horizontal: 20),
              onTap: (){},
            ),
            DefaultButton(
              title: "انهاء الطلب",
              color: color,
              margin: EdgeInsets.all(20),
              onTap: () {},
            ),

          ],
        ),
      ),
    );
  }
}
