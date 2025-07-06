import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';
import '../models/note.dart';
part 'provider.g.dart';

@riverpod
Future<List<Note>> notes(Ref ref) async {
  await Future.delayed(Duration(seconds: 2));
  return [
    Note(title: 'Note 1', description: 'Loaded async'),
    Note(title: 'Note 2', description: 'Loaded async'),
  ];
}

@riverpod
Stream<int> counter(Ref ref) {
  return Stream.periodic(
    Duration(seconds: 1),
  );
}
