import 'package:ecall/MadicalHistory/MedicalHistory.dart';
import 'package:ecall/database/modal/MyDataBase.dart';
import 'package:flutter/material.dart';
import 'package:ecall/main.dart';
import 'package:hive/hive.dart';

class RegistrationScreen extends StatefulWidget {
  static final String ROUTE_NAME = 'Registration Screen';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegistrationScreenWidget();
  }

}
class RegistrationScreenWidget extends State<RegistrationScreen> {
  final _key = GlobalKey<FormState>();

  String name;var age ;String address ;  String carBrand ;String carNumber ;var number1;var number2;  var number3; var number4;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyThemData.BackgroundColor,
        body: Container(
          child: Form(
            key: _key,
            child: ListView(
              children: <Widget> [
                //LOGO
                Expanded(
                    flex: 1,
                    child: Container(
                        child:
                        Center(child: Image.asset('assets/images/logo.png'))

                    )
                ),
                //NAME
                Expanded(
                   flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            onChanged: (newText){
                              name=newText;
                            },
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Please do not leave the field blank';
                                else
                                  return null;
                              },
                              style: TextStyle(
                                  fontSize: 15, color: MyThemData.DarkGreen),
                              decoration: InputDecoration(
                                prefixIcon: Container(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                                  child:
                                      Image.asset("assets/images/ic_name.png"),
                                ),
                                labelText: 'Name',
                                fillColor: MyThemData.White,
                                filled: true,
                                labelStyle: TextStyle(
                                  color: MyThemData.DarkGreen,
                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color:MyThemData.DarkGreen, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ))
                        ],
                      ),
                    )),
                //AGE
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                              onChanged: (newText){
                                age=newText;
                              },
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Please do not leave the field blank';
                                else
                                  return null;
                              },
                              style: TextStyle(
                                  fontSize: 15, color: MyThemData.DarkGreen),
                              decoration: InputDecoration(
                                prefixIcon: Container(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                                  child:
                                  Image.asset("assets/images/ic_age.png"),
                                ),
                                labelText: 'Age',
                                fillColor: MyThemData.White,
                                filled: true,
                                labelStyle: TextStyle(
                                  color: MyThemData.DarkGreen,
                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color:MyThemData.DarkGreen, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ))
                        ],
                      ),
                    )),
                // ADDRESS
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                              onChanged: (newText){
                                address=newText;
                              },
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Please do not leave the field blank';
                                else
                                  return null;
                              },
                              style: TextStyle(
                                  fontSize: 15, color: MyThemData.DarkGreen),
                              decoration: InputDecoration(
                                prefixIcon: Container(
                                 padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                                  child:
                                  Image.asset("assets/images/ic_location.png"),
                                ),
                                labelText: 'Address',
                                fillColor: MyThemData.White,
                                filled: true,
                                labelStyle: TextStyle(
                                  color: MyThemData.DarkGreen,

                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color:MyThemData.DarkGreen, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ))
                        ],
                      ),
                    )),
                //CAR BRAND
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                              onChanged: (newText){
                                carBrand=newText;
                              },
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Please do not leave the field blank';
                                else
                                  return null;
                              },
                              style: TextStyle(
                                  fontSize: 15, color: MyThemData.DarkGreen),
                              decoration: InputDecoration(
                                prefixIcon: Container(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                                  child:
                                  Image.asset("assets/images/ic_car_brand.png"),
                                ),
                                labelText: 'Car Brand',
                                fillColor: MyThemData.White,
                                filled: true,
                                labelStyle: TextStyle(
                                  color: MyThemData.DarkGreen,

                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color:MyThemData.DarkGreen, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ))
                        ],
                      ),
                    )),
                //CAR NUMBER
                Expanded(
                   flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                              onChanged: (newText){
                                carNumber=newText;
                              },
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Please do not leave the field blank';
                                else
                                  return null;
                              },
                              style: TextStyle(
                                  fontSize: 15, color: MyThemData.DarkGreen),
                              decoration: InputDecoration(
                                prefixIcon: Container(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                                  child:
                                  Image.asset("assets/images/ic_car_number.png"),
                                ),
                                labelText: 'Car Number',
                                fillColor: MyThemData.White,
                                filled: true,
                                labelStyle: TextStyle(
                                  color: MyThemData.DarkGreen,

                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color:MyThemData.DarkGreen, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ))
                        ],
                      ),
                    )),
                //MOBILE NUMBERS #1 #2 #3 #4
                //MOBILE NUMBER #1
                Expanded(
                  flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                              padding: EdgeInsets.only(bottom: 15,left: 13),
                              child: Text('Enter the four numbers you most trusted.',
                                  style:TextStyle(fontSize: 18,color: MyThemData.DarkGreen))),
                          TextFormField(
                              onChanged: (newText){
                                number1=newText;
                              },
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Please do not leave the field blank';
                                else
                                  return null;
                              },
                              style: TextStyle(
                                  fontSize: 15, color: MyThemData.DarkGreen),
                              decoration: InputDecoration(
                                prefixIcon: Container(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                                  child:
                                  Image.asset("assets/images/ic_call.png"),
                                ),
                                labelText: 'Mobile Number #1',
                                fillColor: MyThemData.White,
                                filled: true,
                                labelStyle: TextStyle(
                                  color: MyThemData.DarkGreen,

                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color:MyThemData.DarkGreen, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ))
                        ],
                      ),
                    )),
                //MOBILE NUMBER #2
                Expanded(
                   flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                              onChanged: (newText){
                                number2=newText;
                              },
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Please do not leave the field blank';
                                else
                                  return null;
                              },
                              style: TextStyle(
                                  fontSize: 15, color: MyThemData.DarkGreen),
                              decoration: InputDecoration(
                                prefixIcon: Container(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                                  child:
                                  Image.asset("assets/images/ic_call.png"),
                                ),
                                labelText: 'Mobile Number #2',
                                fillColor: MyThemData.White,
                                filled: true,
                                labelStyle: TextStyle(
                                  color: MyThemData.DarkGreen,

                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color:MyThemData.DarkGreen, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ))
                        ],
                      ),
                    )),
                //MOBILE NUMBER #3
                Expanded(
                  flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                              onChanged: (newText){
                                number3=newText;
                              },
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Please do not leave the field blank';
                                else
                                  return null;
                              },
                              style: TextStyle(
                                  fontSize: 15, color: MyThemData.DarkGreen),
                              decoration: InputDecoration(
                                prefixIcon: Container(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                                  child:
                                  Image.asset("assets/images/ic_call.png"),
                                ),
                                labelText: 'Mobile Number #3',
                                fillColor: MyThemData.White,
                                filled: true,
                                labelStyle: TextStyle(
                                  color: MyThemData.DarkGreen,

                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color:MyThemData.DarkGreen, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ))
                        ],
                      ),
                    )),
                //MOBILE NUMBER #4
                Expanded(
                   flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(1),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                              onChanged: (newText){
                                number4=newText;
                              },
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Please do not leave the field blank';
                                else
                                  return null;
                              },
                              style: TextStyle(
                                  fontSize: 15, color: MyThemData.DarkGreen),
                              decoration: InputDecoration(
                                prefixIcon: Container(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                                  child:
                                  Image.asset("assets/images/ic_call.png"),
                                ),
                                labelText: 'Mobile Number #4',
                                fillColor: MyThemData.White,
                                filled: true,
                                labelStyle: TextStyle(
                                  color: MyThemData.DarkGreen,

                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide:  BorderSide(color:MyThemData.DarkGreen, width: 2.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ))
                        ],
                      ),
                    )),
                //NEXT BUTTON
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,bottom: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            if ( _key.currentState.validate())
                             Navigator.pushNamed(context,MedicalHistory.ROUTE_NAME);
                            else print ('please fill information ');
                            addRegistration();
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 255, 255)),
                          child: (
                              Text('NEXT ',
                            style: TextStyle(color: MyThemData.DarkGreen, fontSize: 10,fontWeight: FontWeight.bold),
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void addRegistration() async{
MyDataBase DBRegistration = MyDataBase(name:name, age:age, address:address,carBrand:carBrand,carNumber: carNumber, number1:number1,number2: number2, number3:number3,number4: number4);
var box =await Hive.openBox<MyDataBase>(MyDataBase.BOX_NAME);
box.add(DBRegistration);
  }

}
