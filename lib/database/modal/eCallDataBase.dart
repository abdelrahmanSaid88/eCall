import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'eCallDataBase.g.dart';

@HiveType(typeId: 0)
class eCallDataBase extends HiveObject {
  static final BOX_NAME = 'registrations';

  eCallDataBase(
      {this.name,
      this.age,
      this.address,
      this.carBrand,
      this.carNumber,
      this.phone1,
      this.phone2,
      this.phone3,
      this.phone4,
      this.bloodType,
      this.medicalHistory});

  @HiveField(0)
  String name;
  @HiveField(1)
  String age;
  @HiveField(2)
  String address;
  @HiveField(3)
  String carBrand;
  @HiveField(4)
  String carNumber;
  @HiveField(5)
  String phone1;
  @HiveField(6)
  String phone2;
  @HiveField(7)
  String phone3;
  @HiveField(8)
  String phone4;
  @HiveField(9)
  String bloodType;
  @HiveField(10)
  String medicalHistory;
}
