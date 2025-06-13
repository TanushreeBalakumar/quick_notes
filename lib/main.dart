import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main(){
  runApp(const QuickNotesApp());
}

class QuickNotesApp extends StatelessWidget {
  const QuickNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuickNotes',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}