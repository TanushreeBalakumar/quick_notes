import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/note.dart';

class NoteNotifier extends StateNotifier<List<Note>> {
  NoteNotifier() : super([]);

  void addNote(Note note) {
    state = [...state, note];
  }

  void setNotes(List<Note> notes) {
    state = notes;
  }
}

final noteNotifierProvider =
    StateNotifierProvider<NoteNotifier, List<Note>>((ref) {
  return NoteNotifier();
});
