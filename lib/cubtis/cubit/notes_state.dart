part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NoteLoading extends NotesState {}

final class NoteLoaded extends NotesState {}
