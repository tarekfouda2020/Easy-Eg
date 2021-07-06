part of 'MapScreenWidgetImports.dart';

class BuildMapMarker extends StatelessWidget {
  final ProductModel model;

  const BuildMapMarker({required this.model});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 1),
          color: MyColors.black,
          shape: BoxShape.rectangle,
        ),
        child: MyText(title: model.name, size: 12, color: MyColors.white,),
      ),
    );
  }
}

