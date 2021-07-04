import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';

import '../main.dart';
class locationpermision extends StatefulWidget{
  static final ROUTE_NAME='location';
  @override
  _locationpermisionState createState() => _locationpermisionState();
}

class _locationpermisionState extends State<locationpermision> {
  bool servicelocation=true;
  PermissionStatus _permissionGranted;
  LocationData _location;
  void initState(){
    super.initState();
    checkLocationServices();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyThemData.BackgroundColor,
        body: Container(
          child: Form(child: ListView(children:<Widget> [Expanded(flex:1,
              child:
              Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ Center(child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/home.png'),
              ),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Abdelrahman Said',style: TextStyle(color: MyThemData.DarkGreen),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Giza/6October',style: TextStyle(color: MyThemData.DarkGreen),),
              ),
                Padding(
                      padding: const EdgeInsets.all(2),
                      child: Center(child:
                      RaisedButton(
                        onPressed: onUserClicked ,
                        color: MyThemData.White,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: MyThemData.DarkGreen,width: 0.5),
                            borderRadius: BorderRadius.circular(20)),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(" 01145614696",style: TextStyle(color: MyThemData.DarkGreen),),
                            Icon(Icons.phone_in_talk_outlined, color: MyThemData.DarkGreen,),
                          ],
                        ),
                      )
                      )
                  ),
                Padding(
                    padding: const EdgeInsets.all(2),
                    child: Center(child:
                    RaisedButton(
                      onPressed: onUserClicked ,
                      color: MyThemData.White,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: MyThemData.DarkGreen,width: 0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(" 20",style: TextStyle(color: MyThemData.DarkGreen),),
                          Icon(Icons.event_note, color: MyThemData.DarkGreen,),
                        ],
                      ),
                    )
                    )
                ), Padding(
                    padding: const EdgeInsets.all(2),
                    child: Center(child:
                    RaisedButton(
                      onPressed: onUserClicked ,
                      color: MyThemData.White,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: MyThemData.DarkGreen,width: 0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(" BMW-X6",style: TextStyle(color: MyThemData.DarkGreen),),
                          Icon(Icons.directions_car_rounded, color: MyThemData.DarkGreen,),
                        ],
                      ),
                    )
                    )
                ), Padding(
                    padding: const EdgeInsets.all(2),
                    child: Center(child:
                    RaisedButton(
                      onPressed: onUserClicked ,
                      color: MyThemData.White,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: MyThemData.DarkGreen,width: 0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(" ل ن 1254",style: TextStyle(color: MyThemData.DarkGreen),),
                          Icon(Icons.credit_card_outlined, color: MyThemData.DarkGreen,),
                        ],
                      ),
                    )
                    )
                ),  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Center(child:
                    RaisedButton(
                      onPressed: onUserClicked ,
                      color: MyThemData.White,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: MyThemData.DarkGreen,width: 0.5),
                          borderRadius: BorderRadius.circular(15)),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           Text(" Friends Numbers",style:
                          TextStyle(color: MyThemData.DarkGreen),),
                          Icon(Icons.phone_in_talk_outlined, color: MyThemData.DarkGreen,),
                             ],),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('01145614696'),
                          ),Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('01145614696'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('01145614696'),
                          ),Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('01145614696'),
                          ),
                      ]),
                    )
                    )
                ),Padding(
                    padding: const EdgeInsets.all(2),
                    child: Center(child:
                    RaisedButton(
                      onPressed: onUserClicked ,
                      color: MyThemData.White,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: MyThemData.DarkGreen,width: 0.5),
                          borderRadius: BorderRadius.circular(15)),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(" Medical History",style: TextStyle(color: MyThemData.DarkGreen),),
                          Icon(Icons.local_hospital_sharp, color: MyThemData.DarkGreen,),
                        ]),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('A+'),
                          ),Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Diabetes'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('High blood pressure'),
                          ),Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Insect allergy'),
                          ),
                      ]),
                    )
                    )
                ),
                ],

            ),

                 )
      )

          ],
    )
            )
            )
      )
    );
  }
  Future<void> checkLocationServices() async {
    Location location = Location();
    servicelocation = await location.serviceEnabled();
    if (servicelocation) {
      _permissionGranted = await location.hasPermission();

      if (_permissionGranted == PermissionStatus.granted) {
        //_location = await location.getLocation();
        //print(_location.latitude.toString() + " " +
        //_location.longitude.toString());
        location.onLocationChanged.listen((LocationData currentLocation) {
          print(currentLocation.latitude.toString() + " " + currentLocation.longitude.toString());
        });
      }
      else {
        _permissionGranted = await location.requestPermission();

        if (_permissionGranted == PermissionStatus.granted) {
          print('user allowed');
        } else {
          SystemNavigator.pop();
        }
      }
    } else {
      servicelocation = await location.requestService();
      if (servicelocation) {
        _permissionGranted == await location.hasPermission();
        if (_permissionGranted == PermissionStatus.granted) {
          print('user allowed before');
        }
        else {
          _permissionGranted = await location.requestPermission();
          if (_permissionGranted == PermissionStatus.granted) {
            print('user allowed');
          } else {
            SystemNavigator.pop();
          }
        }
      }
      else {
        SystemNavigator.pop();
      }
    }
  }
  void onUserClicked(){

  }
}