part of 'GalleryImports.dart';

class Gallery extends StatelessWidget {

  final Color color;
  final ProductDetailsData detailsData;

  const Gallery({required this.color,required this.detailsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          BuildImageGallery(),
          BuildReservationButton(color: color,detailsData: detailsData,),
        ],
      ),
    );
  }
}

