part of 'ConRegisterWidgetsImports.dart';

class BuildLoginAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(title: tr(context,"haveAccount"), color: MyColors.white, size: 12,),
          SizedBox(width: 5),
          InkWell(
            onTap: ()=>AutoRouter.of(context).pop(),
            child: MyText(title: tr(context,"login"), color: MyColors.white, size: 12,),
          ),
        ],
      ),
    );
  }
}
