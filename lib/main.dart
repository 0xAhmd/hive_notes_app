import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:minimial_notes_app_hive/constants.dart';
import 'package:minimial_notes_app_hive/cubtis/cubit/theme_cubit.dart';
import 'package:minimial_notes_app_hive/models/note_model.dart';
import 'package:minimial_notes_app_hive/pages/home_page.dart';
import 'package:minimial_notes_app_hive/pages/setteings_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kBox);
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );

  //! Inestagram -> ahmdz.cpp
  //? Github -> 0xAhmd
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return MaterialApp(
            routes: {
              HomePage.id: (context) => const HomePage(),
              SetteingsPage.id: (context) => const SetteingsPage(),
            },
            theme: theme, // Use the theme provided by ThemeCubit
            debugShowCheckedModeBanner: false,
            initialRoute: HomePage.id,
          );
        },
      ),
    );
  }
}
