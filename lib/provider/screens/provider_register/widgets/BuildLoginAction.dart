part of 'RegisterWidgetsImports.dart';

class BuildLoginAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(title: "لدي حساب بالفعل ؟ ", color: MyColors.white, size: 12,),
          SizedBox(width: 5),
          InkWell(
            onTap: ()=>AutoRouter.of(context).pop(),
            child: MyText(title: "تسجيل دخول", color: MyColors.white, size: 12,),
          ),
        ],
      ),
    );
  }
}
