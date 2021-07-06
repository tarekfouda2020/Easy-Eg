part of 'MapScreenImports.dart';

class MapScreenData {
  final GenericBloc<List<Marker>> markersCubit = new GenericBloc([]);
  Completer<GoogleMapController> mapController = Completer();
  List<ProductModel> mainData = [];
  late double lat, lng, zoom;

  fetchData(BuildContext context, Color color, int catId,
      {bool refresh = true}) async {
    mainData = await CustomerRepository(context).getMapProducts(catId, refresh);
    setMarkerWidgets(context, color);
  }

  getCurrentLocation(BuildContext context) async {
    // var loc = await Utils.getCurrentLocation();
    var loc;
    lat = loc?.latitude ?? 24.76006327315991;
    lng = loc?.longitude ?? 46.67399099468996;
    zoom = 10;
    final GoogleMapController controller = await mapController.future;
    final CameraPosition position =
        CameraPosition(target: LatLng(lat, lng), zoom: zoom);
    controller.animateCamera(CameraUpdate.newCameraPosition(position));
  }

  void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(json.encode(MapStyle.server));
    mapController.complete(controller);
  }

  List<Marker> mapBitmapsToMarkers(
      List<Uint8List> bitmaps, BuildContext context, Color color) {
    List<Marker> markersList = [];
    bitmaps.asMap().forEach((i, bmp) {
      final model = mainData[i];
      markersList.add(
        Marker(
          onTap: () => navigate(context, color, model),
          markerId: MarkerId(model.name),
          position: LatLng(double.parse(model.lat), double.parse(model.lng)),
          icon: BitmapDescriptor.fromBytes(bmp),
        ),
      );
    });
    return markersList;
  }

  Widget _getMarkerWidget(ProductModel model) {
    return BuildMapMarker(model: model);
  }

  setMarkerWidgets(context, Color color) {
    MarkerGenerator(markerWidgets(), (bitmaps) {
      var markers = mapBitmapsToMarkers(bitmaps, context, color);
      markersCubit.onUpdateData(markers);
    }).generate(context);
    markersCubit.onUpdateData(markersCubit.state.data);
  }

  List<Widget> markerWidgets() {
    return mainData.map((c) => _getMarkerWidget(c)).toList();
  }

  void navigate(BuildContext context, Color color, ProductModel model) {
    AutoRouter.of(context)
        .push<bool?>(ProductDetailsRoute(color: color, model: model));
  }
}
