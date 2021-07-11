import 'package:flutter/material.dart';
import 'package:ecall/database/modal/eCallDataBase.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../main.dart';

class HomeScreen extends StatefulWidget {
  static final ROUTE_NAME = 'Home';

  HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  eCallDataBase ecallDataBase = eCallDataBase();

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future getData() async {
    var box = await Hive.openBox(eCallDataBase.BOX_NAME);
    ecallDataBase = await box.values.toList()[0];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: MyThemeData.BackgroundColor,
            body: ListView(
              children: <Widget>[
                //profile pic
                Container(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Image.asset('assets/images/home.png')),
                )),
                Container(
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Name
                      Container(
                          child: Text(
                              ecallDataBase.name != null
                                  ? ecallDataBase.name
                                  : 'Nader ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, color: MyThemeData.DarkGreen))),
                      //Address
                      Container(
                        margin: EdgeInsets.all(1),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.only(bottom: 10, top: 5),
                                child: Text(
                                    ecallDataBase.address != null
                                        ? ecallDataBase.address
                                        : 'Giza/6oct',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: MyThemeData.DarkGreen))),
                          ],
                        ),
                      ),
                      //Age
                      Container(
                        margin: EdgeInsets.all(1),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ecallDataBase.age != null
                                      ? ecallDataBase.age
                                      : 'null',
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                  color: MyThemeData.DarkGreen,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                color: MyThemeData.White,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Car Brand
                      Container(
                        margin: EdgeInsets.all(1),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ecallDataBase.carBrand != null
                                      ? ecallDataBase.carBrand
                                      : 'BMW-X6',
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                  color: MyThemeData.DarkGreen,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                color: MyThemeData.White,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Car number
                      Container(
                        margin: EdgeInsets.all(1),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ecallDataBase.carNumber != null
                                      ? ecallDataBase.carNumber
                                      : ' ل ن 123 ',
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                  color: MyThemeData.DarkGreen,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                color: MyThemeData.White,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Friends Number
                      Container(
                        margin: EdgeInsets.all(1),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 120,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Friends Numbers \n-------------------------\n'
                                  '${ecallDataBase.phone1 != null ? ecallDataBase.phone1 : '01117965567'} \n '
                                  '${ecallDataBase.phone2 != null ? ecallDataBase.phone2 : '01145614696'} \n'
                                  ' ${ecallDataBase.phone3 != null ? ecallDataBase.phone3 : '123'} \n'
                                  ' ${ecallDataBase.phone4 != null ? ecallDataBase.phone4 : '122'} ',
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                  color: MyThemeData.DarkGreen,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                color: MyThemeData.White,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //medical history
                      Container(
                        margin: EdgeInsets.all(1),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 125,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Medical History \n-------------------------\n'
                                  '${ecallDataBase.bloodType != null ? ecallDataBase.bloodType : 'A+'} \n '
                                  '\n ${ecallDataBase.medicalHistory != null ? ecallDataBase.medicalHistory : 'I am Good'}  ',
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                  color: MyThemeData.DarkGreen,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                color: MyThemeData.White,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
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
                    ],
                  ),
                ),
              ],
            )));
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
