import 'package:hive/hive.dart';
part 'personal_details_model.g.dart';
@HiveType(typeId: 1)
class PersonalDetailsModel{
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String address;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String phone;
  @HiveField(4)
  final String dob;
  @HiveField(5)
  final String linkedin;
  const PersonalDetailsModel({this.name='',this.address='',this.email='',this.phone='',this.dob='',this.linkedin=''});
}
