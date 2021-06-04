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
    target: LatLng(-23.5908148,-48.0533779),
    zoom: 19.5,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catedral Nossa Senhora Prazeres"),
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
    markerId: MarkerId("Catedral Nossa Senhora Dos Prazeres"),
    position: LatLng(-23.5908148,-48.0533779),
    infoWindow: InfoWindow(title: "Fishing Park!"),
    icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueBlue),
  );


}
