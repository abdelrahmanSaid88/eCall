// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MyDataBase.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyDataBaseAdapter extends TypeAdapter<MyDataBase> {
  @override
  final int typeId = 0;

  @override
  MyDataBase read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyDataBase(
      name: fields[0] as String,
      age: fields[1] as dynamic,
      address: fields[2] as String,
      carBrand: fields[3] as String,
      carNumber: fields[4] as String,
      number1: fields[5] as dynamic,
      number2: fields[6] as dynamic,
      number3: fields[7] as dynamic,
      number4: fields[8] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, MyDataBase obj) {
    writer
      ..writeByte(9)
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
      ..write(obj.number1)
      ..writeByte(6)
      ..write(obj.number2)
      ..writeByte(7)
      ..write(obj.number3)
      ..writeByte(8)
      ..write(obj.number4);
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
