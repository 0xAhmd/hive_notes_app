import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimial_notes_app_hive/widgets/app_drawer.dart';
import 'package:minimial_notes_app_hive/widgets/note_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
        onPressed: () {},
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
