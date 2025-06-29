import 'package:flutter/material.dart';
import 'router/app_router.dart';

void main(){
  runApp(const QuickNotesApp());
}

class QuickNotesApp extends StatelessWidget {
  const QuickNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'QuickNotes',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routerConfig: appRouter,
    );
  }
}