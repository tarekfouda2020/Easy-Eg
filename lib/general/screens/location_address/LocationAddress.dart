part of 'LocationAddressImports.dart';


class LocationAddress extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=>_LocationAddress();
}

class _LocationAddress extends State<LocationAddress> with LocationAddressData {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
          title: BlocBuilder<LocationCubit,LocationState>(
            builder: (context,state){
              return MyText(
                title: "${state.model.address}",
                size: 10,
                color: MyColors.white,
              );
            },
          ),
          backgroundColor: MyColors.primary,
          automaticallyImplyLeading: false,
          centerTitle: true,
          flexibleSpace: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
          ),
        ),
      body: _buildGoogleMapView(),
      floatingActionButton: _buildSaveButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildGoogleMapView(){
    return BlocBuilder<LocationCubit,LocationState>(
      builder: (context,state){
        CameraPosition _initialLoc = CameraPosition(
          target: LatLng(double.parse(state.model.lat), double.parse(state.model.lng)),
          zoom: 16.4746,
        );
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GoogleMap(
                mapType: MapType.normal,
                // markers: _markers,
                initialCameraPosition: _initialLoc,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                rotateGesturesEnabled: true,
                scrollGesturesEnabled: true,
                trafficEnabled: true,
                zoomControlsEnabled: true,
                tiltGesturesEnabled: true,
                compassEnabled: true,
                indoorViewEnabled: true,
                buildingsEnabled: true,
                mapToolbarEnabled: true,
                zoomGesturesEnabled: true,
                onTap: (location) {
                  getLocationAddress(location,context);
                },
                onCameraMove: (loc) => getLocationAddress(loc.target,context),
              ),
            ),
            ImageIcon(AssetImage(Res.marker),size: 80,color: MyColors.secondary,),
            // Positioned(
            //   top: 10,
            //   child: SearchMapPlaceWidget(
            //     apiKey: apiKey,
            //     language: context.locale.languageCode,
            //     placeholder: tr(context,"searchWord"), //"كلمة البحث",
            //     location: LatLng(double.parse(state.model.lat), double.parse(state.model.lng)),
            //     radius: 30000,
            //     onSelected: (place)=>autoCompleteSearch(place,context),
            //   ),
            // )
          ],
        );
      },
    );
  }

  Widget _buildSaveButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: ()=>_changeLocation(context),
          child: Container(
            height: 45,
            width: MediaQuery.of(context).size.width * .7,
            decoration: BoxDecoration(
                color: MyColors.primary,
                borderRadius: BorderRadius.circular(30)),
            alignment: Alignment.center,
            child: MyText(
              title: tr(context,"saveLocation"),
              size: 12,
              color: MyColors.white,
            ),
          ),
        ),
      ],
    );
  }

}
