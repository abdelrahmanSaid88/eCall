import 'package:ecall/ContactPermision/ContactPermision.dart';
import 'package:ecall/database/modal/eCallDataBase.dart';
import 'package:ecall/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';

class RegistrationScreen extends StatefulWidget {
  static final String ROUTE_NAME = 'Registration ';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MedicalHistoryWidget();
  }
}

class MedicalHistoryWidget extends State<RegistrationScreen> {
  final _key = GlobalKey<FormState>();
  Map<String, String> _userData = {
    'name': '',
    'age': '',
    'address': '',
    'carBarnd': '',
    'carNumber': '',
    'phone1': '',
    'phone2': '',
    'phone3': '',
    'phone4': '',
    'bloodType': '',
    'medicalHistory': '',
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: MyThemeData.BackgroundColor,
      /* appBar: AppBar(
        backgroundColor: MyThemeData.White,
        title: Text('Medical History ',style: TextStyle(color:MyThemeData.DarkGreen ),),
      ),*/
      body: Container(
          child: Form(
        key: _key,
        child: ListView(
          children: [
            //LOGO
            Container(
                child: Center(child: Image.asset('assets/images/logo.png'))),
            //NAME
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      initialValue: _userData['name'],
                      onChanged: (newText) {
                        _userData['name'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please do not leave the field blank';
                        else
                          return null;
                      },
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.account_circle,
                            size: 25,
                            color: MyThemeData.DarkGreen,
                          ),
                        ),
                        labelText: 'Name',
                        fillColor: MyThemeData.White,
                        filled: true,
                        labelStyle: TextStyle(
                          color: MyThemeData.DarkGreen,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ))
                ],
              ),
            ),
            //AGE
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      onChanged: (newText) {
                        _userData['age'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please do not leave the field blank';
                        else
                          return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.date_range,
                            size: 25,
                            color: MyThemeData.DarkGreen,
                          ),
                        ),
                        labelText: 'Age',
                        fillColor: MyThemeData.White,
                        filled: true,
                        labelStyle: TextStyle(
                          color: MyThemeData.DarkGreen,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ))
                ],
              ),
            ),
            // ADDRESS
            Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      // Move focus to next
                      onChanged: (newText) {
                        _userData['address'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please do not leave the field blank';
                        else
                          return null;
                      },
                      keyboardType: TextInputType.text,
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.person_pin_circle,
                            size: 25,
                            color: MyThemeData.DarkGreen,
                          ),
                        ),
                        labelText: 'Address',
                        fillColor: MyThemeData.White,
                        filled: true,
                        labelStyle: TextStyle(
                          color: MyThemeData.DarkGreen,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ))
                ],
              ),
            ),
            //CAR BRAND
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      onChanged: (newText) {
                        _userData['carBrand'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please do not leave the field blank';
                        else
                          return null;
                      },
                      keyboardType: TextInputType.text,
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          // add padding to adjust icon
                          child: Icon(
                            Icons.taxi_alert,
                            size: 25,
                            color: MyThemeData.DarkGreen,
                          ),
                        ),
                        labelText: 'Car Brand',
                        fillColor: MyThemeData.White,
                        filled: true,
                        labelStyle: TextStyle(
                          color: MyThemeData.DarkGreen,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ))
                ],
              ),
            ),
            //CAR NUMBER
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      onChanged: (newText) {
                        _userData['carNumber'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please do not leave the field blank';
                        else
                          return null;
                      },
                      keyboardType: TextInputType.text,
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          // add padding to adjust icon
                          child: Icon(
                            Icons.car_repair,
                            size: 25,
                            color: MyThemeData.DarkGreen,
                          ),
                        ),
                        labelText: 'Car Number',
                        fillColor: MyThemeData.White,
                        filled: true,
                        labelStyle: TextStyle(
                          color: MyThemeData.DarkGreen,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ))
                ],
              ),
            ),
            //MOBILE NUMBERS #1 #2 #3 #4
            //MOBILE NUMBER #1
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 15, left: 13),
                      child: Text('Enter the four numbers you most trusted.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: MyThemeData.DarkGreen))),
                  TextFormField(
                      onChanged: (newText) {
                        _userData['phone1'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please do not leave the field blank';
                        else
                          return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.add_ic_call,
                            size: 25,
                            color: MyThemeData.DarkGreen,
                          ),
                        ),
                        labelText: 'phone 1',
                        fillColor: MyThemeData.White,
                        filled: true,
                        labelStyle: TextStyle(
                          color: MyThemeData.DarkGreen,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ))
                ],
              ),
            ),
            //MOBILE NUMBER #2
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      onChanged: (newText) {
                        _userData['phone2'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please do not leave the field blank';
                        else
                          return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.add_ic_call,
                            size: 25,
                            color: MyThemeData.DarkGreen,
                          ),
                        ),
                        labelText: 'phone 2',
                        fillColor: MyThemeData.White,
                        filled: true,
                        labelStyle: TextStyle(
                          color: MyThemeData.DarkGreen,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ))
                ],
              ),
            ),
            //MOBILE NUMBER #3
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      onChanged: (newText) {
                        _userData['phone3'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please do not leave the field blank';
                        else
                          return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          // add padding to adjust icon
                          child: Icon(
                            Icons.add_ic_call,
                            size: 25,
                            color: MyThemeData.DarkGreen,
                          ),
                        ),
                        labelText: 'phone 3',
                        fillColor: MyThemeData.White,
                        filled: true,
                        labelStyle: TextStyle(
                          color: MyThemeData.DarkGreen,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ))
                ],
              ),
            ),
            //MOBILE NUMBER #4
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      onChanged: (newText) {
                        _userData['phone4'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Please do not leave the field blank';
                        else
                          return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.add_ic_call,
                            size: 24,
                            color: MyThemeData.DarkGreen,
                          ),
                        ),
                        labelText: 'phone 4',
                        fillColor: MyThemeData.White,
                        filled: true,
                        labelStyle: TextStyle(
                          color: MyThemeData.DarkGreen,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ))
                ],
              ),
            ),
            //blood type
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 15, left: 13),
                      child: Text('Enter all your medical history.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: MyThemeData.DarkGreen))),
                  TextFormField(
                      onChanged: (newText) {
                        _userData['bloodType'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return "Please Enter Your Blood Type";
                        else
                          return null;
                      },
                      maxLength: 2,
                      style: TextStyle(
                        fontSize: 15,
                        color: MyThemeData.DarkGreen,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10),
                          child: (Image.asset(
                            'assets/images/blood.png',
                          )),
                        ),
                        labelText: 'Enter Your Blood Type ',
                        labelStyle: TextStyle(
                            color: MyThemeData.DarkGreen, fontSize: 15),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyThemeData.DarkGreen, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      )),
                ],
              ),
            ),
            //Medical History
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      onChanged: (newText) {
                        _userData['medicalHistory'] = newText;
                      },
                      validator: (value) {
                        if (value.isEmpty)
                          return "Please Enter Your comment";
                        else
                          return null;
                      },
                      minLines: 11,
                      maxLines: 11,
                      style:
                          TextStyle(fontSize: 15, color: MyThemeData.DarkGreen),
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(5),
                            // add padding to adjust icon
                            child: (Image.asset(
                              'assets/images/ic_medical_history.png',
                              width: 45,
                              height: 45,
                              fit: BoxFit.fill,
                            )),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: MyThemeData.DarkGreen, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Do you have any diseases?  ',
                          labelStyle: TextStyle(
                              fontSize: 15, color: MyThemeData.DarkGreen))),
                ],
              ),
            ),
            //Button
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: ElevatedButton(
                    onPressed: onClick,
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
            )
          ],
        ),
      )),
    );
  }

  void onClick() async {
    if (_key.currentState.validate()) {
      await addRegistration();
      Navigator.pushNamed(context, ContactPermision.ROUTE_NAME);
    } else
      print('please fill information ');
  }

  void addRegistration() async {
    eCallDataBase DBRegistration = eCallDataBase(
        name: _userData['name'],
        age: _userData['age'],
        address: _userData['address'],
        carBrand: _userData['carBrand'],
        carNumber: _userData['carNumber'],
        phone1: _userData['phone1'],
        phone2: _userData['phone2'],
        phone3: _userData['phone3'],
        phone4: _userData['phone4'],
        bloodType: _userData['bloodType'],
        medicalHistory: _userData['medicalHistory']);
    var box = await Hive.openBox(eCallDataBase.BOX_NAME);
    await box.clear();
    await box.add(DBRegistration);
    return;
  }
}
