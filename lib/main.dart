import 'package:canoo/ui/app_theme.dart';
import 'package:canoo/ui/views/home_view.dart';
import 'package:canoo/ui/views/sponsorship_view.dart';
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
      title: 'Flutter Demo',
      theme: AppTheme.darkTheme,
      home: const Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: HomeView(),
      ),
    );
  }
}
