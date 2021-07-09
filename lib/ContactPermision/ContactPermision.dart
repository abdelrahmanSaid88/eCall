import 'package:ecall/LocationPermision/LocationPermision.dart';
import 'package:ecall/sendsms/SendSms.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contact/flutter_contact.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactPermision extends StatefulWidget {
  static final ROUTE_NAME = 'contact';

  @override
  _ContactPermisionState createState() => _ContactPermisionState();
}

class _ContactPermisionState extends State<ContactPermision> {
  List<Contact> listContacts;

  @override
  void initState() {
    super.initState();
    askContactPermission();
  }

  Future askContactPermission() async {
    final permission = await ContactPermissionUtils._getPermission();

    switch (permission) {
      case PermissionStatus.granted:
        Navigator.pushNamed(context, locationpermision.ROUTE_NAME);
        break;
      case PermissionStatus.permanentlyDenied:
        SystemNavigator.pop();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold());
  }
}

class ContactPermissionUtils {
  static Future<PermissionStatus> _getPermission() async {
    final permission = await Permission.contacts.status;

    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.permanentlyDenied) {
      final newpermission = await Permission.contacts.request();
      await [Permission.contacts].request();

      return newpermission ?? PermissionStatus.undetermined;
    } else {
      return permission;
    }
  }
}
