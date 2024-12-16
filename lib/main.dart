import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:minimial_notes_app_hive/constants.dart';
import 'package:minimial_notes_app_hive/models/note_model.dart';
import 'package:minimial_notes_app_hive/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        appBarTheme:
            AppBarTheme(elevation: 0.0, backgroundColor: Colors.grey.shade300),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
