import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GMaps extends StatelessWidget {
  const GMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Maps',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Google Maps"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_rounded),
            color: Colors.white,
          ),
        ),
        body: const GoogleMap(
          // type dari map dengan beberapa type yakni hybrid, normal, satellite, terrain dan none
          mapType: MapType.normal,
          // posisi camera dengan menentukan lokasi berdasar latitude dan longitude
          initialCameraPosition: CameraPosition(
            target: LatLng(-8.184486, 113.668076),
            zoom: 14.4746,
          ),
        ),
      ),
    );
  }
}
