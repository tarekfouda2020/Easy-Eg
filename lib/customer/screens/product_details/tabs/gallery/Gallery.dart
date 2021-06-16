part of 'GalleryImports.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          BuildImageGallery(),
          BuildReservationButton(),
        ],
      ),
    );
  }
}

