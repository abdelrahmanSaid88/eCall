import 'package:flutter/material.dart';
class MedicalHistory extends StatefulWidget{
  static final String routeName='Medical History ';

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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 244, 244),
        title: Text('Medical History ',style: TextStyle(color:Colors.black ),),
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
                      padding: EdgeInsets.only(top: 20),

                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text('What is your Blood Type ?',style:TextStyle(fontSize: 12,color: Color.fromARGB(
                                  255, 20, 58, 65)))),
                          TextFormField(
                              validator: (value){
                                if (value!.isEmpty)
                                  return "Please Enter Your Blood Type";
                                else return null ;
                              },

                              style: TextStyle(fontSize: 10),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Your Blood Type ',
                              ))
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text('Do you have any diseases ?',style:TextStyle(fontSize: 12,color: Color.fromARGB(
                                255, 20, 58, 65)),)),
                        TextField(

                            minLines: 17,
                            maxLines: 17,

                            style: TextStyle(fontSize: 10),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter Your Comment ',
                            )),
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if ( _key.currentState!.validate())
                            return null ;
                           // Navigator.pushNamed(context, CheckTextField.routeName);
                          else print ('please fill information ');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 244, 244, 244)),
                        child: (Text(
                          'Submit ',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }



}
