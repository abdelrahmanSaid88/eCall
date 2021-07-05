import 'package:flutter/material.dart';

import '../main.dart';

class HomeScreen extends StatefulWidget {
  static final ROUTE_NAME = 'Home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: MyThemData.BackgroundColor,
            body: Container(
                child: Form(
                    child: ListView(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/home.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Abdelrahman ',
                              style: TextStyle(color: MyThemData.DarkGreen),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Giza/6October',
                              style: TextStyle(color: MyThemData.DarkGreen),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(2),
                              child: Center(
                                  child: RaisedButton(
                                onPressed: onUserClicked,
                                color: MyThemData.White,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: MyThemData.DarkGreen,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      " 01145614696",
                                      style: TextStyle(
                                          color: MyThemData.DarkGreen),
                                    ),
                                    Image.asset("assets/images/ic_call.png"),
                                  ],
                                ),
                              ))),
                          Padding(
                              padding: const EdgeInsets.all(2),
                              child: Center(
                                  child: RaisedButton(
                                onPressed: onUserClicked,
                                color: MyThemData.White,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: MyThemData.DarkGreen,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      " 20",
                                      style: TextStyle(
                                          color: MyThemData.DarkGreen),
                                    ),
                                    Image.asset("assets/images/ic_age.png"),
                                  ],
                                ),
                              ))),
                          Padding(
                              padding: const EdgeInsets.all(2),
                              child: Center(
                                  child: RaisedButton(
                                onPressed: onUserClicked,
                                color: MyThemData.White,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: MyThemData.DarkGreen,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      " BMW-X6",
                                      style: TextStyle(
                                          color: MyThemData.DarkGreen),
                                    ),
                                    Image.asset(
                                        "assets/images/ic_car_brand.png"),
                                  ],
                                ),
                              ))),
                          Padding(
                              padding: const EdgeInsets.all(2),
                              child: Center(
                                  child: RaisedButton(
                                onPressed: onUserClicked,
                                color: MyThemData.White,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: MyThemData.DarkGreen,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      " ل ن 1254",
                                      style: TextStyle(
                                          color: MyThemData.DarkGreen),
                                    ),
                                    Image.asset(
                                        "assets/images/ic_car_number.png"),
                                  ],
                                ),
                              ))),
                          Padding(
                              padding: const EdgeInsets.all(2),
                              child: Center(
                                  child: RaisedButton(
                                onPressed: onUserClicked,
                                color: MyThemData.White,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: MyThemData.DarkGreen,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              " Friends Numbers",
                                              style: TextStyle(
                                                  color: MyThemData.DarkGreen,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('01145614696'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('01145614696'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('01145614696'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('01145614696'),
                                          ),
                                        ]),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 100),
                                      child: Image.asset(
                                          "assets/images/ic_call.png"),
                                    ),
                                  ],
                                ),
                              ))),
                          Padding(
                              padding: const EdgeInsets.all(2),
                              child: Center(
                                  child: RaisedButton(
                                onPressed: onUserClicked,
                                color: MyThemData.White,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: MyThemData.DarkGreen,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              " Medical History",
                                              style: TextStyle(
                                                  color: MyThemData.DarkGreen,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('A+'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('Diabetes'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('High blood pressure'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('Insect allergy'),
                                          ),
                                        ]),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 100),
                                      child: Image.asset(
                                          "assets/images/ic_medical_history.png"),
                                    ),
                                  ],
                                ),
                              ))),
                        ],
                      ),
                    ))
              ],
            )))));
  }

  void onUserClicked() {}
}
