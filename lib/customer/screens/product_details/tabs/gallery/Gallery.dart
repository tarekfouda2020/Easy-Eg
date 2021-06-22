part of 'GalleryImports.dart';

class Gallery extends StatelessWidget {

  final Color color;
  final ProductDetailsData detailsData;
  final ProductModel model;

  const Gallery({required this.color,required this.detailsData,required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          BuildImageGallery(model: model),
          BuildReservationButton(color: color,detailsData: detailsData,id: model.idProvider,),
        ],
      ),
    );
  }
}

