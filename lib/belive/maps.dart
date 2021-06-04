import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  Completer<GoogleMapController> _controlle = Completer();
  static final CameraPosition _posicaoInicial = CameraPosition(
    target: LatLng(-23.6001002,-48.0614593),
    zoom: 19.5,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Believe Club - Itapetininga"),
      ),
      body: _mapa(),
    );
  }

  _mapa(){
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.satellite,
        markers: { fish },
        initialCameraPosition: _posicaoInicial,
        onMapCreated: (GoogleMapController controller){
          _controlle.complete(controller);
        },
      ),
    );
  }


  Marker fish = Marker(
    markerId: MarkerId("belive"),
    position: LatLng(-23.6001002,-48.0614593),
    infoWindow: InfoWindow(title: "Believe Club - Itapetininga!"),
    icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueBlue),
  );


}
