import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/note.dart';
import '../note_notifier.dart';
import '../provider.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesAsync = ref.watch(notesProvider);
    final notes = ref.watch(noteNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('QuickNotes'),
        backgroundColor: Colors.purple.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: notesAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text('Error: $e')),
          data: (initialNotes) {
            if (notes.isEmpty) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref.read(noteNotifierProvider.notifier).setNotes(initialNotes);
              });
              return const Center(child: CircularProgressIndicator());
            }

            return notes.isEmpty
                ? const Center(
                    child: Text(
                      'No notes yet!',
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                : ListView.builder(
                    itemCount: notes.length,
                    itemBuilder: (context, index) {
                      final note = notes[index];
                      return Card(
                        child: ListTile(
                          title: Text(note.title),
                          subtitle: Text(note.description),
                        ),
                      );
                    },
                  );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await context.push('/add');
          if (result != null && result is Note) {
            ref.read(noteNotifierProvider.notifier).addNote(result);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
