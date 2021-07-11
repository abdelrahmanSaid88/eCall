import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_scan_bluetooth/flutter_scan_bluetooth.dart';

class BlutoothPermision extends StatefulWidget {
  static final ROUTE_NAME = 'bluetoothpermission';

  @override
  BlutoothPermisionState createState() => new BlutoothPermisionState();
}

class BlutoothPermisionState extends State<BlutoothPermision> {
  @override
  void initState() {
    super.initState();
    checkBluetoothServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

  Future<void> checkBluetoothServices() async {
    FlutterScanBluetooth _bluetooth = FlutterScanBluetooth();
    try {
      await _bluetooth.requestPermissions();
      print('All good with perms');
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
}