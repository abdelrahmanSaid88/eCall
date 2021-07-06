import 'dart:ffi';
import 'package:ecall/ContactPermision/ContactPermision.dart';
import 'package:ecall/LocationPermision/LocationPermision.dart';
import 'package:ecall/main.dart';
import 'package:flutter/material.dart';
class MedicalHistory extends StatefulWidget{
  static final String ROUTE_NAME='Medical History ';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MedicalHistoryWidget();

  }
}
class MedicalHistoryWidget extends State<MedicalHistory> {
  final _key= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: MyThemeData.BackgroundColor,
      appBar: AppBar(
        backgroundColor: MyThemeData.White,
        title: Text(
          'Medical History ',
          style: TextStyle(color: MyThemeData.DarkGreen),
        ),
      ),
      body: Container(
          child: Form(
        key: _key,
        child: ListView(
          children: [
                Expanded(
                    flex: 1,
                    child: Container(

                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text('What is your Blood Type ?',
                              style: TextStyle(
                                  fontSize: 18, color: MyThemeData.DarkGreen))),
                      TextFormField(
                          validator: (value) {
                            if (value.isEmpty)
                              return "Please Enter Your Blood Type";
                            else
                              return null;
                          },
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            labelText: 'Enter Your Blood Type ',
                                fillColor: Colors.white,filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                  color: MyThemeData.DarkGreen, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),

                              ))
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                        child: Text(
                          'Do you have any diseases ?',
                          style: TextStyle(
                              fontSize: 18, color: MyThemeData.DarkGreen),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty)
                              return "Please Enter Your comment";
                            else
                              return null;
                          },
                          minLines: 13,
                          maxLines: 13,
                              style: TextStyle(fontSize: 10),

                              decoration: InputDecoration(
                                fillColor: Colors.white,filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                  color: MyThemeData.DarkGreen, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                                labelText: 'Enter Your Comment ',
                              )),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: onClick ,
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 255, 255)),
                          child: (Text(
                            'Submit ',
                        style: TextStyle(
                            color: MyThemeData.DarkGreen,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
 Void onClick(){
     if ( _key.currentState.validate()){
       Navigator.pushNamed(context, ContactPermision.ROUTE_NAME);
    }
     else print ('please fill information ');

 }
}
