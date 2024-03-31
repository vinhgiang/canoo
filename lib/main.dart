import 'package:canoo/ui/app_theme.dart';
import 'package:canoo/ui/views/pre_loader_view.dart';
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
      home: PreLoaderView(),
    );
  }
}
