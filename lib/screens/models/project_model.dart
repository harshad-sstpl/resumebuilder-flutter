import 'package:hive/hive.dart';
part 'project_model.g.dart';
@HiveType(typeId: 6)
class ProjectModel{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String detasils;
  const ProjectModel({this.title='',this.detasils=''});
}
