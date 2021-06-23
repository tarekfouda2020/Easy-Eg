part of 'LoginWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  final LoginData loginData;

  const BuildRegisterButton({required this.loginData});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(title: "ليس لديك حساب ؟ ", color: MyColors.white, size: 12),
          SizedBox(width: 5),
          InkWell(
            onTap: ()=>loginData.navigateUserRegister(context),
            child: MyText(
              title: "تسجيل جديد",
              color: MyColors.white,
              size: 12,
            ),
          ),
        ],
      ),
    );
  }
}
