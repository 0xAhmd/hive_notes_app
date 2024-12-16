import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteListTile extends StatelessWidget {
  const NoteListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Text(
            'Note model ',
            style: GoogleFonts.lato(fontSize: 16),
          ),
          trailing: const Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
