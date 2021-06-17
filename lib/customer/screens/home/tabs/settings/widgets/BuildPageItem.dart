part of 'SettingsWidgetImports.dart';

class BuildPageItem extends StatelessWidget {
  final Color color;
  final String name;
  final Function() onTap;

  const BuildPageItem({required this.color, required this.onTap, required this.name});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color.withOpacity(.3),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(title: name, color: MyColors.blackOpacity, size: 10,fontWeight: FontWeight.w700,),
            Icon(Icons.arrow_forward_ios,size: 17,color: MyColors.blackOpacity,)
          ],
        ),
      ),
    );
  }
}

