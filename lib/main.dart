import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'router/app_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: QuickNotesApp(),
    ),
  );
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
