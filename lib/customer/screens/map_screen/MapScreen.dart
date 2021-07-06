part of 'MapScreenImports.dart';


class MapScreen extends StatefulWidget {
  final Color color;
  final int catId;

  const MapScreen({required this.catId, required this.color});
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  final MapScreenData mapScreenData = new MapScreenData();

  @override
  void initState() {
    super.initState();
    mapScreenData.fetchData(context, widget.color, widget.catId,refresh: false);
    mapScreenData.fetchData(context, widget.color, widget.catId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "البحث", color: widget.color,),
      body: BlocBuilder<GenericBloc<List<Marker>>, GenericState<List<Marker>>>(
        bloc: mapScreenData.markersCubit,
        builder: (_, state) {
          return GoogleMap(
            compassEnabled: true,
            myLocationEnabled: true,
            mapToolbarEnabled: true,
            zoomControlsEnabled: true,
            zoomGesturesEnabled: true,
            initialCameraPosition:
            CameraPosition(target: LatLng(31.037933, 31.381523), zoom: 10),
            markers: state.data.toSet(),
            onMapCreated: mapScreenData.onMapCreated,
            onCameraMove: (position) {

            },
          );
        },
      ),
    );
  }

}


