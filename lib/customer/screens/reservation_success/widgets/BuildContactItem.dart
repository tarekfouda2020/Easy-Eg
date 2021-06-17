part of 'ReservSuccessWidgetImports.dart';

class BuildContactItem extends StatelessWidget {

  final String image;
  final String title;
  final Color color;
  final Function() onTap;

  const BuildContactItem({required this.image, required this.title, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: MyColors.white,
                shape: BoxShape.circle
              ),
              alignment: Alignment.center,
              child: ImageIcon(AssetImage(image),color: color,size: 18,),
            ),
            SizedBox(height: 10),
            MyText(title: title,size: 10,color: MyColors.white,)
          ],
        ),
      ),
    );
  }
}

