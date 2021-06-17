part of 'ReservSuccessWidgetImports.dart';

class BuildCheckView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.white),
        shape: BoxShape.circle
      ),
      alignment: Alignment.center,
      child: Icon(Icons.check,size: 50,color: MyColors.white,),
    );
  }
}


