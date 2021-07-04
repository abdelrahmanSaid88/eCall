import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'MyDataBase.g.dart';
@HiveType(typeId:0)
class MyDataBase extends HiveObject{
  static final BOX_NAME='registrations';
  @HiveField(0)
  String name ;
  @HiveField(1)
  var age ;
  @HiveField(2)
  String address ;
  @HiveField(3)
  String carBrand ;
  @HiveField(4)
  String carNumber ;
  @HiveField(5)
  var number1;
  @HiveField(6)
  var number2;
  @HiveField(7)
  var number3;
  @HiveField(8)
  var number4;

  MyDataBase({ this.name, this.age, this.address, this.carBrand, this.carNumber,
      this.number1, this.number2, this.number3, this.number4,});

}