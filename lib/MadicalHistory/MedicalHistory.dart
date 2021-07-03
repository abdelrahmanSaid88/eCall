import 'dart:ffi';
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
      backgroundColor: MyThemData.BackgroundColor,
      appBar: AppBar(
        backgroundColor: MyThemData.White,
        title: Text('Medical History ',style: TextStyle(color:MyThemData.DarkGreen ),),
      ),
      body: Container(

          child : Form(
            key: _key,
            child: Column(

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
                              child: Text('What is your Blood Type ?',style:TextStyle(fontSize: 18,color: MyThemData.DarkGreen))),
                          TextFormField(

                              validator: (value){
                                if (value.isEmpty)
                                  return "Please Enter Your Blood Type";
                                else return null ;
                              },

                              style: TextStyle(fontSize: 15),
                              decoration: InputDecoration(
                                labelText: 'Enter Your Blood Type ',
                                fillColor: Colors.white,filled: true,
                                border: OutlineInputBorder(
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
                           padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                            child: Text('Do you have any diseases ?',style:TextStyle(fontSize: 18,color: MyThemData.DarkGreen),)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                              validator: (value){
                                if (value.isEmpty)
                                  return "Please Enter Your comment";
                                else return null ;
                              },
                              minLines: 13,
                              maxLines: 13,
                              style: TextStyle(fontSize: 10),

                              decoration: InputDecoration(
                                fillColor: Colors.white,filled: true,
                                border: OutlineInputBorder(
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
                              primary: Color.fromARGB(255, 244, 244, 244)),
                          child: (Text(
                            'Submit ',
                            style: TextStyle(color: MyThemData.DarkGreen, fontSize: 10,fontWeight: FontWeight.bold),
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
       Navigator.pushNamed(context, locationpermision.ROUTE_NAME);
     }
     else print ('please fill information ');

 }
}
