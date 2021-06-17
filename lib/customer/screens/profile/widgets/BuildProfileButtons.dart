part of 'ProfileWidgetImports.dart';

class BuildProfileButtons extends StatelessWidget {
  final Color color;

  const BuildProfileButtons({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          DefaultButton(
            title: "تاكيد",
            onTap: (){},
            color: color,
            margin: EdgeInsets.symmetric(vertical: 20),
          ),
          DefaultButton(
            title: "تغيير كلمة المرور",
            onTap: (){},
            color: Colors.transparent,
            borderColor: MyColors.black,
            textColor: MyColors.black,
            margin: EdgeInsets.only(bottom: 20),
          ),
        ],
      ),
    );
  }
}

