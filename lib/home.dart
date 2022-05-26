// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  var a = [
    Marker(
      markerId: MarkerId('place_name'),
      position: LatLng(9.669111, 7.014007),
      // icon: BitmapDescriptor.,
      infoWindow: InfoWindow(
        title: 'title',
        snippet: 'address',
      ),
    ),
    Marker(
      markerId: MarkerId('pla'),
      position: LatLng(10.669111, 7.014007),
      // icon: BitmapDescriptor.,
      infoWindow: InfoWindow(
        title: 'title',
        snippet: 'address',
      ),
    ),
    Marker(
      markerId: MarkerId('sda'),
      position: LatLng(11.669111, 7.014007),
      // icon: BitmapDescriptor.,
      infoWindow: InfoWindow(
        title: 'title',
        snippet: 'address',
      ),
    ),
  ];

  static final CameraPosition _kGooglePlex = CameraPosition(
    tilt: 0.440717697143555,
    target: LatLng(9.0765, 7.3986),
    zoom: 0.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
    // bearing: 192.8334901395799,
    target: LatLng(9.0765, 7.3986),
    tilt: 0.440717697143555,
    zoom: 10.151926040649414,
  );

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Route App"),
      ),
      body: GoogleMap(
        markers: Set.from(a),
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }
}
