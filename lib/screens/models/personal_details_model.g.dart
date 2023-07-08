// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonalDetailsModelAdapter extends TypeAdapter<PersonalDetailsModel> {
  @override
  final int typeId = 1;

  @override
  PersonalDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PersonalDetailsModel(
      name: fields[0] as String,
      address: fields[1] as String,
      email: fields[2] as String,
      phone: fields[3] as String,
      dob: fields[4] as String,
      linkedin: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PersonalDetailsModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.address)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.dob)
      ..writeByte(5)
      ..write(obj.linkedin);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonalDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
