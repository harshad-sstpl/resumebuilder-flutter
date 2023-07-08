import 'package:hive/hive.dart';
part 'objective_model.g.dart';
@HiveType(typeId: 5)
class ObjectiveModel{
  @HiveField(0)
  final String objective;
  const ObjectiveModel({this.objective=''});
}
