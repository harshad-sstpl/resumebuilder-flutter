// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileModelAdapter extends TypeAdapter<ProfileModel> {
  @override
  final int typeId = 0;

  @override
  ProfileModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileModel(
      personalDetails: fields[0] as PersonalDetailsModel?,
      dateTimeCreated: fields[7] as String?,
      education: (fields[1] as List).cast<EducationModel>(),
      experience: (fields[2] as List).cast<ExperienceModel>(),
      skill: (fields[3] as List).cast<SkillModel>(),
      objective: fields[4] as ObjectiveModel?,
      project: (fields[5] as List).cast<ProjectModel>(),
      language: (fields[6] as List).cast<LanguageModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProfileModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.personalDetails)
      ..writeByte(1)
      ..write(obj.education)
      ..writeByte(2)
      ..write(obj.experience)
      ..writeByte(3)
      ..write(obj.skill)
      ..writeByte(4)
      ..write(obj.objective)
      ..writeByte(5)
      ..write(obj.project)
      ..writeByte(6)
      ..write(obj.language)
      ..writeByte(7)
      ..write(obj.dateTimeCreated);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
