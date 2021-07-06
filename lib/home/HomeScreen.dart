import 'package:flutter/material.dart';
import 'package:ecall/database/modal/MyDataBase.dart';
import 'package:ecall/database/modal/MyDataBase.dart';
import '../main.dart';

class HomeScreen extends StatefulWidget {
  static final ROUTE_NAME = 'Home';

//  HomeScreen(this.myDataBase);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyDataBase myDataBase;

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: MyThemeData.BackgroundColor,
            body: Container(
                child: ListView(
              children: <Widget>[
                //profile pic
                Expanded(
                    flex: 1,
                    child: Container(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Center(child: Image.asset('assets/images/home.png')),
                    ))),
                //Name
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            child: Text(MyDataBase.BOX_NAME,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: MyThemeData.DarkGreen))),
                      ],
                    ),
                  ),
                ),
                //Address
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.only(bottom: 10, top: 5),
                            child: Text('myDataBase.address',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: MyThemeData.DarkGreen))),
                      ],
                    ),
                  ),
                ),
                //Age
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                          // Move focus to next
                          decoration: InputDecoration(
                            hintText: 'TextField A',
                            hintStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
                              child: Image.asset("assets/images/ic_age.png"),
                            ),
                            fillColor: MyThemeData.White,
                            filled: true,
                            labelStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: MyThemeData.DarkGreen, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),

                          style: TextStyle(
                              fontSize: 15, color: MyThemeData.DarkGreen),
                        ),
                      ],
                    ),
                  ),
                ),
                //Car Brand
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                          // Move focus to next
                          decoration: InputDecoration(
                            hintText: 'TextField A',
                            hintStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
                              child:
                                  Image.asset("assets/images/ic_car_brand.png"),
                            ),
                            fillColor: MyThemeData.White,
                            filled: true,
                            labelStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: MyThemeData.DarkGreen, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),

                          style: TextStyle(
                              fontSize: 15, color: MyThemeData.DarkGreen),
                        ),
                      ],
                    ),
                  ),
                ),
                //Car number
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                          // Move focus to next
                          decoration: InputDecoration(
                            hintText: 'TextField A',
                            hintStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
                              child: Image.asset(
                                  "assets/images/ic_car_number.png"),
                            ),
                            fillColor: MyThemeData.White,
                            filled: true,
                            labelStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: MyThemeData.DarkGreen, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),

                          style: TextStyle(
                              fontSize: 15, color: MyThemeData.DarkGreen),
                        ),
                      ],
                    ),
                  ),
                ),
                //Friends Number
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          minLines: 8,
                          maxLines: 8,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                          // Move focus to next
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'TextField A',
                            hintStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
                              child: Image.asset("assets/images/ic_call.png"),
                            ),
                            fillColor: MyThemeData.White,
                            filled: true,
                            labelStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: MyThemeData.DarkGreen, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),

                          style: TextStyle(
                              fontSize: 15, color: MyThemeData.DarkGreen),
                        ),
                      ],
                    ),
                  ),
                ),
                //medical history
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(1),
                    padding:
                        EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          minLines: 8,
                          maxLines: 8,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                          // Move focus to next
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'TextField A',
                            hintStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
                              child: Image.asset(
                                  "assets/images/ic_medical_history.png"),
                            ),
                            fillColor: MyThemeData.White,
                            filled: true,
                            labelStyle: TextStyle(
                              color: MyThemeData.DarkGreen,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: MyThemeData.DarkGreen, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),

                          style: TextStyle(
                              fontSize: 15, color: MyThemeData.DarkGreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ))));
  }

  void onUserClicked() {}
}
