import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimial_notes_app_hive/cubtis/cubit/theme_cubit.dart';

class SetteingsPage extends StatelessWidget {
  const SetteingsPage({super.key});
  static const String id = 'settings_page';

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        (context) => Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return Padding(
            padding: const EdgeInsets.all(24),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: ListTile(
                leading: const Icon(Icons.brightness_6),
                title: const Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Switch(
                  activeColor: Theme.of(context).colorScheme.secondary,
                  value: theme.brightness == Brightness.dark,
                  onChanged: (value) {
                    context.read<ThemeCubit>().toggleTheme(value);
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
