import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:minimial_notes_app_hive/db/note_database.dart';
import 'package:minimial_notes_app_hive/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  Future<void> fetchNotes(NoteModel note) async {
    emit(NoteLoading());
    try {
      final notes = NoteDataBase().readAllNotes();
      emit(NoteLoaded(notes));
    } catch (e) {
      emit(NoteError(e.toString()));
    }
  }

  Future<void> addNote(NoteModel note) async {
    emit(NoteLoading());
    try {
      await NoteDataBase().addNote(note); // Add the note to the database
      await fetchNotes(note); // Fetch updated list of notes
    } catch (e) {
      emit(NoteError(e.toString()));
    }
  }
}
