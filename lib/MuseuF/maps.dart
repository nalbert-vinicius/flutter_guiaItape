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
    target: LatLng(-23.5831378,-48.0373094),
    zoom: 19.5,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Museu Ferroviário"),
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
    markerId: MarkerId("museu"),
    position: LatLng(-23.5831378,-48.0373094),
    infoWindow: InfoWindow(title: "Museu Ferroviário!"),
    icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueBlue),
  );


}
