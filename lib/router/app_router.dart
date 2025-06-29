import 'package:go_router/go_router.dart';

import '../screens/home_page.dart';
import '../screens/add_note_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) => AddNotePage(),
    ),
  ],
);
