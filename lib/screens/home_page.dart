

import 'package:flutter/material.dart';
import '../models/note.dart';
import 'add_note_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Note> notes = [];
  
  void _addNote(Note newNote) {
    setState(() {
      notes.add(newNote);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuickNotes'),
      ),
      
      body: notes.isEmpty
          ? const Center(child: Text('No notes yet! Add some.'))
          : ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(note.title),
                    subtitle: Text(note.description),
                  ),
                );
              },
            ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNotePage(),
            ),
          );

          if (result != null && result is Note) {
            _addNote(result);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}