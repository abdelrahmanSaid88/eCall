import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class DirectCall extends StatefulWidget {
  static final String ROUTE_NAME='AutomaticCall ';

  @override
  DirectCallState createState() => DirectCallState();
}

class DirectCallState extends State<DirectCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: _callNumber,child: Text('call'),)
        ],
      ),
    );


  }_callNumber() async{
    const number = '01145614696'; //set the number here
    bool res = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
