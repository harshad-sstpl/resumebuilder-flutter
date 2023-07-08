import 'package:hive/hive.dart';
part 'skill_model.g.dart';
@HiveType(typeId: 4)
class SkillModel{
  @HiveField(0)
  final String skill;
  const SkillModel({this.skill=''});
}
