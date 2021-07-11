import 'package:ecall/database/modal/eCallDataBase.dart';
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
        children: [
          ElevatedButton(
            onPressed: _callNumber,
            child: Text('call'),
          )
        ],
      ),
    );
  }_callNumber() async {
    getData();
    const number = '01145614696'; //set the number here
    bool res = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
