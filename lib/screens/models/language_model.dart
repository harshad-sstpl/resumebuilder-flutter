import 'package:hive/hive.dart';
part 'language_model.g.dart';
@HiveType(typeId: 7)
class LanguageModel{
  @HiveField(0)
  final String language;
  const LanguageModel({this.language=''});
}
