part of 'GalleryImports.dart';

class Gallery extends StatelessWidget {
  final Color color;

  const Gallery({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          BuildImageGallery(),
          BuildReservationButton(color: color,),
        ],
      ),
    );
  }
}

