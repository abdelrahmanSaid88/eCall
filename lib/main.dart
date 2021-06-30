import 'package:ecall/LocationPermision/LocationPermision.dart';
import 'package:ecall/MadicalHistory/MedicalHistory.dart';
import 'package:ecall/registration/RegistrationScreen.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class MyThemData {
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
        locationpermision.ROUTE_NAME:(context)=>locationpermision(),
        MedicalHistory.ROUTE_NAME:(context)=>MedicalHistory(),
        RegistrationScreen.ROUTE_NAME:(context)=>RegistrationScreen(),
      },
      initialRoute: RegistrationScreen.ROUTE_NAME,
    );
  }
}
