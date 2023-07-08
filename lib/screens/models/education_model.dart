import 'package:hive/hive.dart';
part 'education_model.g.dart';

@HiveType(typeId: 2)
class EducationModel{
  @HiveField(0)
  final String course;
  @HiveField(1)
  final String school;
  @HiveField(2)
  final String score;
  @HiveField(3)
  final String year;
  const EducationModel({this.course='',this.school='',this.score='',this.year=''});
}
