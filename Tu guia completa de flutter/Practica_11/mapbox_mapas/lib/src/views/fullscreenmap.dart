import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:http/http.dart' as http;

class FullScreenMap extends StatefulWidget {
  FullScreenMap({Key? key}) : super(key: key);

  @override
  State<FullScreenMap> createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
  MapboxMapController? mapController;
  String selectedStyle = 'mapbox://styles/hector1234/cl04pg7ek000e15prt0v9dq8n';
  final oscuro = 'mapbox://styles/hector1234/cl04pg7ek000e15prt0v9dq8n';
  final streets = 'mapbox://styles/hector1234/cl04pkcp6000e16nktg41ryrp';
  final center = LatLng(37.810575, -122.477174);

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
    _onStyleLoaded();
  }

  void _onStyleLoaded() {
    addImageFromAsset("assetImage", "assets/custom-icon.png");
    addImageFromUrl(
        "networkImage", Uri.parse("https://via.placeholder.com/50"));
  }

  Future<void> addImageFromAsset(String name, String assetName) async {
    final ByteData bytes = await rootBundle.load(assetName);
    final Uint8List list = bytes.buffer.asUint8List();
    return mapController!.addImage(name, list);
  }

  /// Adds a network image to the currently displayed style
  Future<void> addImageFromUrl(String name, Uri uri) async {
    var response = await http.get(uri);
    return mapController!.addImage(name, response.bodyBytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: crearMapa(),
      floatingActionButton: botonesFlotantes(),
    );
  }

  Column botonesFlotantes() {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      FloatingActionButton(
        onPressed: () {
          mapController!.addSymbol(SymbolOptions(
              geometry: center,
              iconSize: 10,
              textField: 'Montaña creada aqui',
              iconImage: 'networkImage',
              textOffset: Offset(0, 2)));
        },
        child: Icon(Icons.sentiment_very_dissatisfied),
      ),
      SizedBox(
        height: 5,
      ),
      FloatingActionButton(
        onPressed: () {
          mapController!.animateCamera(CameraUpdate.zoomIn());
        },
        child: Icon(Icons.zoom_in),
      ),
      SizedBox(
        height: 5,
      ),
      FloatingActionButton(
        onPressed: () {
          mapController!.animateCamera(CameraUpdate.zoomOut());
        },
        child: Icon(Icons.zoom_out),
      ),
      SizedBox(
        height: 5,
      ),
      FloatingActionButton(
        onPressed: () {
          if (selectedStyle == oscuro) {
            selectedStyle = streets;
          } else {
            selectedStyle = oscuro;
          }
          _onStyleLoaded();
          setState(() {});
        },
        child: Icon(Icons.add_to_home_screen),
      )
    ]);
  }

  MapboxMap crearMapa() {
    return MapboxMap(
      styleString: selectedStyle,
      accessToken:
          'sk.eyJ1IjoiaGVjdG9yMTIzNCIsImEiOiJjbDA0a251anQxbHdoM2JvMG45cmZ4Yzh6In0.qWg-E14m5KrJmxAPTQ7yew',
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(target: center, zoom: 15),
    );
  }
}
