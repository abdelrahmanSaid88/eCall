import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecall/LocationPermision/LocationPermision.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
class SmsSend extends StatefulWidget{
  static final ROUTE_NAME = 'sms';
  @override
  _SmsSendState createState() => _SmsSendState();
}

class _SmsSendState extends State<SmsSend> {
  String saveddata;
  var enterDataFiled = new TextEditingController();

  void initState() {
    super.initState();
   Navigator.pushNamed(context, locationpermision.ROUTE_NAME);}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Launchers"),
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child:  FlatButton.icon(
                        icon: Icon(Icons.sms),
                        label:Text("Write a sms", style: TextStyle(fontSize: 25)),
                        onPressed: () => launch("sms:01145614696"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> loadSavedData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      if(sharedPreferences.getString('location')!=null&&sharedPreferences.getString('location').isNotEmpty){
        saveddata = sharedPreferences.getString('location');
      }else{
        saveddata= 'nothing saved in shared Preferences ';
      }
    });
  }
  savedData(String message)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('location', message);
  }
}

