// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eCallDataBase.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyDataBaseAdapter extends TypeAdapter<eCallDataBase> {
  @override
  final int typeId = 0;

  @override
  eCallDataBase read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return eCallDataBase(
      name: fields[0] as String,
      age: fields[1] as String,
      address: fields[2] as String,
      carBrand: fields[3] as String,
      carNumber: fields[4] as String,
      phone1: fields[5] as String,
      phone2: fields[6] as String,
      phone3: fields[7] as String,
      phone4: fields[8] as String,
      bloodType: fields[9] as String,
      medicalHistory: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, eCallDataBase obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
      ..write(obj.carBrand)
      ..writeByte(4)
      ..write(obj.carNumber)
      ..writeByte(5)
      ..write(obj.phone1)
      ..writeByte(6)
      ..write(obj.phone2)
      ..writeByte(7)
      ..write(obj.phone3)
      ..writeByte(8)
      ..write(obj.phone4)
      ..writeByte(9)
      ..write(obj.bloodType)
      ..writeByte(10)
      ..write(obj.medicalHistory);
  }
  @override
  int get hashCode => typeId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyDataBaseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
