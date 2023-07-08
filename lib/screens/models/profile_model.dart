import 'package:hive/hive.dart';
import 'package:resumebuilder/screens/models/education_model.dart';
import 'package:resumebuilder/screens/models/experince_model.dart';
import 'package:resumebuilder/screens/models/language_model.dart';
import 'package:resumebuilder/screens/models/objective_model.dart';
import 'package:resumebuilder/screens/models/personal_details_model.dart';
import 'package:resumebuilder/screens/models/project_model.dart';
import 'package:resumebuilder/screens/models/skill_model.dart';
part 'profile_model.g.dart';

@HiveType(typeId: 0)
class ProfileModel{

  @HiveField(0)
  PersonalDetailsModel? personalDetails;
  @HiveField(1)
  List<EducationModel> education;
  @HiveField(2)
  List<ExperienceModel> experience;
  @HiveField(3)
  List<SkillModel> skill;
  @HiveField(4)
  ObjectiveModel? objective;
  @HiveField(5)
  List<ProjectModel> project;
  @HiveField(6)
  List<LanguageModel> language;
  @HiveField(7)
  String? dateTimeCreated;
  ProfileModel({this.personalDetails= const PersonalDetailsModel(),this.dateTimeCreated,this.education=const [EducationModel()],this.experience=const [ExperienceModel()],this.skill=const [SkillModel()],this.objective=const ObjectiveModel(),this.project=const [ProjectModel()],this.language=const [ LanguageModel()]});

  ProfileModel copyWith({
    PersonalDetailsModel? personalDetails,
    List<EducationModel>? education,
    List<ExperienceModel>? experience,
    List<SkillModel>? skill,
    ObjectiveModel? objective,
    List<ProjectModel>? project,
    List<LanguageModel>? language,
    String? dateTimeCreated
  }) =>
      ProfileModel(
        personalDetails:personalDetails ?? this.personalDetails,
        education: education ?? this.education,
        experience: experience ?? this.experience,
        skill: skill??this.skill,
        objective: objective??this.objective,
        project:project??this.project,
        language: language??this.language,
        dateTimeCreated: dateTimeCreated??this.dateTimeCreated
      );

}
