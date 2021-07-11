import 'package:ecall/database/modal/eCallDataBase.dart';
import 'package:ecall/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:hive/hive.dart';

class DirectCall extends StatefulWidget {
  static final String ROUTE_NAME = 'AutomaticCall ';

  DirectCall();

  @override
  _DirectCallState createState() => _DirectCallState();
}

class _DirectCallState extends State<DirectCall> {
  eCallDataBase ecallDataBase = eCallDataBase();

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future getData() async {
    var box = await Hive.openBox(eCallDataBase.BOX_NAME);
    ecallDataBase = await box.values.toList()[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _callNumber,
              style: ElevatedButton.styleFrom(
                  primary: MyThemeData.DarkGreen),
              child: Text(
                'call',
                style: TextStyle(color: MyThemeData.White),
              ),
            ),
          )
        ],
      ),
    );
  }

  _callNumber() async {
    String number;
    if (ecallDataBase.phone1 != null) {
      number = ecallDataBase.phone1;
    } else {
      number = 'null';
    } //set the number here
    bool res = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
