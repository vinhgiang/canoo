import 'package:canoo/services/navigation_service.dart';
import 'package:canoo/ui/app_theme.dart';
import 'package:canoo/ui/views/home_view.dart';
import 'package:canoo/ui/views/profile_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canoo',
      theme: AppTheme.darkTheme,
      home: const HomeView(),
      navigatorKey: NavigationService().navigatorKey,
      routes: {
        '/home': (context) => const HomeView(),
        '/profile': (context) => const ProfileView(),
      },
    );
  }
}
