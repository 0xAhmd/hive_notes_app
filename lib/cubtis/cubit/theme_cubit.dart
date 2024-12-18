import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimial_notes_app_hive/themes/dark_theme.dart';
import 'package:minimial_notes_app_hive/themes/light_theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(lightMode);

  void toggleTheme(bool isDarkMode) {
    emit(isDarkMode ? darkMode : lightMode);
  }
}
