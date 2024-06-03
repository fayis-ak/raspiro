import 'dart:async';
import 'dart:developer';
 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HelperProvider with ChangeNotifier {
  final searchcontroller = TextEditingController();

  clearcontroller() {
    searchcontroller.clear();
    notifyListeners();
  }

  bool isclick = false;

  click() {
    isclick = true;

    notifyListeners();
  }

  double? searchlatti;
  double? searchlont;

  Future getconvertlatlon(String text) async {
    List<Location> locations = await locationFromAddress(text);

    log('helper lat lon   ${locations.first.latitude} ,  ${locations.first.longitude}=======================');

    searchlatti = locations.first.latitude;
    searchlont = locations.first.longitude;

    notifyListeners();
  }

  moovecameratolatlon(mapcontroller) {
    if (searchlatti != null && searchlont != null) {
      mapcontroller.animateCamera(
        CameraUpdate.newLatLng(
          LatLng(searchlatti!, searchlatti!
              // double.parse(searchlatti.toString()),
              // double.parse(
              //   searchlont.toString(),
              // ),
              ),
        ),
      );
    }

    // notifyListeners();
  }

  double? lat;
  double? lon;

  Future latlog() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    // setState(() {
    lat = position.latitude;
    lon = position.longitude;
    // });

    log('user lat cehck click ${position.latitude} log ${position.longitude}  ===========================');
    notifyListeners();
  }

  Future<bool> handleLocationPermission(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        'Location services are disabled. Please enable the services',
      )));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }
}
