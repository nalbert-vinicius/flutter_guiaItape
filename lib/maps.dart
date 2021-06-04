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
    target: LatLng(-23.600943, -48.05153),
    zoom: 19.5,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAPA TESTE"),
      ),
      body: _mapa(),
    );
  }

  _mapa(){
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.satellite,
        markers: { fatecMark },
        initialCameraPosition: _posicaoInicial,
        onMapCreated: (GoogleMapController controller){
          _controlle.complete(controller);
        },
      ),
    );
  }


  Marker fatecMark = Marker(
      markerId: MarkerId("FatecItape"),
      position: LatLng(-23.600943, -48.05153),
      infoWindow: InfoWindow(title: "Fatec Itape"),
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueBlue),
      onTap: (){
        print("oiooooooooooo");
      }
  );


}
