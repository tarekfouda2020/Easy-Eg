part of 'LocationAddressImports.dart';

class LocationAddressData {

  final GlobalKey<ScaffoldState> _scaffold = new GlobalKey<ScaffoldState>();
  final Completer<GoogleMapController> _controller = Completer();
  late LocationModel locationModel;
  final apiKey = "AIzaSyDIBH6mfPQ13UnF9aZtmaUQtuu-mQcxxb0";


  void getLocationAddress(LatLng position,BuildContext context) async {
    LatLng loc = position;
    String address = await Utils.getAddress(loc,context);
    locationModel= LocationModel(
        loc.latitude.toString(),
        loc.longitude.toString(),
        address
    );
    context.read<LocationCubit>().onLocationUpdated(locationModel);
  }



  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
    );
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  void _changeLocation(BuildContext context) async {
    context.read<LocationCubit>().onLocationUpdated(locationModel,change: true);
    Navigator.pop(context);
  }

  // void autoCompleteSearch(Place place,BuildContext context) async{
  //   final geolocation = await place.geolocation;
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newLatLng(geolocation.coordinates));
  //   controller.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
  //   getLocationAddress(geolocation.coordinates,context);
  // }

}