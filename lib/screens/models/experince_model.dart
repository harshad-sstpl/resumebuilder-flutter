import 'package:hive/hive.dart';
part 'experince_model.g.dart';

@HiveType(typeId: 3)
class ExperienceModel{
  @HiveField(0)
  final String companyName;
  @HiveField(1)
  final String jobTitle;
  @HiveField(2)
  final String startDate;
  @HiveField(3)
  final String endDate;
  @HiveField(4)
  final String details;
  const ExperienceModel({this.companyName='',this.jobTitle='',this.startDate='',this.endDate='',this.details=''});
}
