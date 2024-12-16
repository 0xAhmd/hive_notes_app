import 'package:hive/hive.dart';
import 'package:minimial_notes_app_hive/models/note_model.dart';

class TodoDatabase {
  TodoDatabase() {
    _initialize();
  }

  Box<NoteModel>? _kbox;

  Future<void> _initialize() async {
    // Initialize the Hive box
    _kbox = await Hive.openBox<NoteModel>('notes');
  }

  List<NoteModel> readAllNotes() {
    return _kbox?.values.toList().cast<NoteModel>() ?? [];
  }

  Future<void> addNote(NoteModel note) async {
    await _kbox?.add(note);
  }

  Future<void> deleteNote(int index) async {
    await _kbox?.deleteAt(index);
  }
}
