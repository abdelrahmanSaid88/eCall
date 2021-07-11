import 'package:ecall/LocationPermision/LocationPermision.dart';
import 'package:ecall/MadicalHistory/MedicalHistory.dart';
import 'package:ecall/bluetooth/BluetoothScan.dart';
import 'package:ecall/bluetooth/BlutoothPermision.dart';
import 'package:ecall/directcall/DirectCall.dart';
import 'package:ecall/home/HomeScreen.dart';
import 'package:ecall/registration/RegistrationScreen.dart';
import 'package:ecall/sendsms/SendSms.dart';
import 'package:flutter/material.dart';
import 'ContactPermision/ContactPermision.dart';

class MyThemeData {
  static var DarkGreen = Color.fromRGBO(20, 58, 65, 1.0);
  static var BackgroundColor = Color.fromRGBO(213, 216, 216, 1.0);
  static var Black = Color.fromRGBO(14, 14, 14, 1.0);
  static var White = Color.fromRGBO(250, 250, 250, 1.0);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ContactPermision.ROUTE_NAME: (context) => ContactPermision(),
        locationpermision.ROUTE_NAME: (context) => locationpermision(),
        MedicalHistory.ROUTE_NAME: (context) => MedicalHistory(),
        RegistrationScreen.ROUTE_NAME: (context) => RegistrationScreen(),
        HomeScreen.ROUTE_NAME: (context) => HomeScreen(),
        SmsSend.ROUTE_NAME: (context) => SmsSend(),
        BlutoothPermision.ROUTE_NAME:(context) => BlutoothPermision(),
        BluetoothScan.ROUTE_NAME:(context)=>BluetoothScan(),
        DirectCall.ROUTE_NAME:(context) => DirectCall(),
      },
      initialRoute: DirectCall.ROUTE_NAME,
    );
  }
}
