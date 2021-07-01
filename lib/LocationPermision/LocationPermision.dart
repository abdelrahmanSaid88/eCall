import 'package:ecall/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
class locationpermision extends StatefulWidget{
  static final ROUTE_NAME='location';
  @override
  _locationpermisionState createState() => _locationpermisionState();
}

class _locationpermisionState extends State<locationpermision> {
  bool servicelocation=true;
  PermissionStatus _permissionGranted;
  LocationData _location;
  void initState(){
    super.initState();
    checkLocationServices();
    Navigator.pushNamed(context, HomeScreen.ROUTE_NAME);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  Future<void> checkLocationServices() async {
    Location location = Location();
    servicelocation = await location.serviceEnabled();
    if (servicelocation) {
      _permissionGranted = await location.hasPermission();

      if (_permissionGranted == PermissionStatus.granted) {
        //_location = await location.getLocation();
        //print(_location.latitude.toString() + " " +
        //_location.longitude.toString());
        location.onLocationChanged.listen((LocationData currentLocation) {
          print(currentLocation.latitude.toString() + " " + currentLocation.longitude.toString());
        });

      }
      else {
        _permissionGranted = await location.requestPermission();

        if (_permissionGranted == PermissionStatus.granted) {
          print('user allowed');
        } else {
          SystemNavigator.pop();
        }
      }
    } else {
      servicelocation = await location.requestService();
      if (servicelocation) {
        _permissionGranted == await location.hasPermission();
        if (_permissionGranted == PermissionStatus.granted) {
          print('user allowed before');
        }
        else {
          _permissionGranted = await location.requestPermission();
          if (_permissionGranted == PermissionStatus.granted) {
            print('user allowed');
          } else {
            SystemNavigator.pop();
          }
        }
      }
      else {
        SystemNavigator.pop();
      }
    }
  }
}