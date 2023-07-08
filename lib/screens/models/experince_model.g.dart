// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experince_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExperienceModelAdapter extends TypeAdapter<ExperienceModel> {
  @override
  final int typeId = 3;

  @override
  ExperienceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExperienceModel(
      companyName: fields[0] as String,
      jobTitle: fields[1] as String,
      startDate: fields[2] as String,
      endDate: fields[3] as String,
      details: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ExperienceModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.companyName)
      ..writeByte(1)
      ..write(obj.jobTitle)
      ..writeByte(2)
      ..write(obj.startDate)
      ..writeByte(3)
      ..write(obj.endDate)
      ..writeByte(4)
      ..write(obj.details);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExperienceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
