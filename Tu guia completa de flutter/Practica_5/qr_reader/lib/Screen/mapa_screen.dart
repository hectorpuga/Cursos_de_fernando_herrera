import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_reader/Models/scan_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaScreen extends StatefulWidget {
  const MapaScreen({Key? key}) : super(key: key);

  @override
  State<MapaScreen> createState() => _MapaScreenState();
}

class _MapaScreenState extends State<MapaScreen> {
  MapType mapType = MapType.normal;
  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    final ScanModel? scan =
        ModalRoute.of(context)!.settings.arguments as ScanModel?;

    final CameraPosition puntoInicial =
        CameraPosition(target: scan!.getLatLng(), zoom: 17.5, tilt: 50);

    Set<Marker> markes = Set<Marker>();
    markes.add(Marker(
        markerId: const MarkerId('geo-location'), position: scan.getLatLng()));

    return Scaffold(
        appBar: AppBar(
          title: Text('Mapa'),
          actions: [
            IconButton(
              icon: Icon(Icons.location_disabled),
              onPressed: () async {
                final GoogleMapController controller = await _controller.future;
                controller.animateCamera(CameraUpdate.newCameraPosition(
                  CameraPosition(
                      target: scan.getLatLng(), zoom: 17.5, tilt: 50),
                ));
              },
            )
          ],
        ),
        body: GoogleMap(
          myLocationButtonEnabled: true,
          zoomControlsEnabled: false,
          markers: markes,
          mapType: mapType,
          initialCameraPosition: puntoInicial,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (mapType == MapType.normal) {
              mapType = MapType.satellite;
            } else {
              mapType = MapType.normal;
            }

            setState(() {});
          },
          child: Icon(Icons.layers),
        ));
  }
}
