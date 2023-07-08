// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objective_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ObjectiveModelAdapter extends TypeAdapter<ObjectiveModel> {
  @override
  final int typeId = 5;

  @override
  ObjectiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ObjectiveModel(
      objective: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ObjectiveModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.objective);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ObjectiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
