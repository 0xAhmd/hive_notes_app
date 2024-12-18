import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimial_notes_app_hive/widgets/app_drawer.dart';
import 'package:minimial_notes_app_hive/widgets/note_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String id = 'initial route';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: const Text('Add Note'),
                    content: const TextField(
                      decoration: InputDecoration(
                        label: Text('your note here'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Save')),
                    ],
                  ));
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'Notes',
              style: GoogleFonts.tinos(
                fontSize: 38,
              ),
            ),
          ),
          const NoteListTile()
        ],
      ),
    );
  }
}
