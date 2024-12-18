import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteListTile extends StatelessWidget {
  const NoteListTile({super.key});

  @override
  Widget build(BuildContext context) {
    // Access current theme colors
    final theme = Theme.of(context);
    final textColor = theme.colorScheme.onSurface; // Text color
    final isDarkMode = theme.brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Text(
            'Note model',
            style: GoogleFonts.lato(
              fontSize: 18,
              color: textColor, // Responsive text color
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Add Note'),
                      content: const TextField(
                        decoration: InputDecoration(
                          label: Text('Your note here'),
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
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.edit,
                    color: isDarkMode
                        ? Colors.white
                        : Colors.black), // Responsive icon color
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Delete Note'),
                      content: Text(
                        'Are you sure you want to delete this note?',
                        style: GoogleFonts.lato(fontSize: 22),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);

                            // Delete note logic here
                          },
                          child: const Text('Delete'),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.delete,
                    color: isDarkMode
                        ? Colors.white
                        : Colors.black), // Responsive icon color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
