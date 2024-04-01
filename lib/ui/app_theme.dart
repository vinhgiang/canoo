import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
        backgroundColor: Colors.black,
      ),
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
