import 'package:canoo/services/navigation_service.dart';
import 'package:canoo/theme/app_theme.dart';
import 'package:canoo/views/home_view.dart';
import 'package:canoo/views/more_view.dart';
import 'package:canoo/views/profile/profile_view.dart';
import 'package:canoo/views/tabs_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canoo',
      theme: AppTheme.darkTheme,
      home: const TabsView(),
      navigatorKey: NavigationService().navigatorKey,
      routes: {
        '/home': (context) => const HomeView(),
        '/profile': (context) => const ProfileView(),
        '/more': (context) => const MoreView(),
      },
    );
  }
}
