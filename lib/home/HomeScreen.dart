import 'package:flutter/material.dart';
import 'package:ecall/database/modal/eCallDataBase.dart';
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
  eCallDataBase myDataBase = eCallDataBase();

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future getData() async {
    var box = await Hive.openBox(eCallDataBase.BOX_NAME);
    myDataBase = await box.values.toList()[0];
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
                              myDataBase.name != null
                                  ? myDataBase.name
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
                                    myDataBase.address != null
                                        ? myDataBase.address
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
                                  myDataBase.age != null
                                      ? myDataBase.age
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
                                  myDataBase.carBrand != null
                                      ? myDataBase.carBrand
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
                                  myDataBase.carNumber != null
                                      ? myDataBase.carNumber
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
                                  '${myDataBase.phone1 != null ? myDataBase.phone1 : '01117965567'} \n '
                                  '${myDataBase.phone2 != null ? myDataBase.phone2 : '01145614696'} \n'
                                  ' ${myDataBase.phone3 != null ? myDataBase.phone3 : '123'} \n'
                                  ' ${myDataBase.phone4 != null ? myDataBase.phone4 : '122'} ',
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
                                  '${myDataBase.bloodType != null ? myDataBase.bloodType : 'A+'} \n '
                                  '\n ${myDataBase.medicalHistory != null ? myDataBase.medicalHistory : 'I am Good'}  ',
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
                    ],
                  ),
                ),
              ],
            )));
  }
}
