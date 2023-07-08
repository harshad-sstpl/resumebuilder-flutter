import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:resumebuilder/screens/home_screen.dart';
import 'package:resumebuilder/screens/models/education_model.dart';
import 'package:resumebuilder/screens/models/experince_model.dart';
import 'package:resumebuilder/screens/models/language_model.dart';
import 'package:resumebuilder/screens/models/objective_model.dart';
import 'package:resumebuilder/screens/models/personal_details_model.dart';
import 'package:resumebuilder/screens/models/profile_model.dart';
import 'package:resumebuilder/screens/models/project_model.dart';
import 'package:resumebuilder/screens/models/skill_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
    // Initialize hive
  await Hive.initFlutter();
  // Registering the adapter
  Hive.registerAdapter(EducationModelAdapter());
  Hive.registerAdapter(ExperienceModelAdapter());
  Hive.registerAdapter(ProfileModelAdapter());
  Hive.registerAdapter(LanguageModelAdapter());
  Hive.registerAdapter(ObjectiveModelAdapter());
  Hive.registerAdapter(PersonalDetailsModelAdapter());
  Hive.registerAdapter(ProjectModelAdapter());
  Hive.registerAdapter(SkillModelAdapter());
  // Opening the box
  //await Hive.openBox('userBox');
    await Hive.openBox<ProfileModel>('profileBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Builder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
