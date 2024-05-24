import 'package:canoo/services/navigation_service.dart';
import 'package:canoo/theme/app_theme.dart';
import 'package:canoo/views/home_view.dart';
import 'package:canoo/views/more_view.dart';
import 'package:canoo/views/profile/profile_view.dart';
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
        '/more': (context) => const MoreView(),
      },
    );
  }
}
