import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
        backgroundColor: Colors.black,
      ),
      // colorScheme: const ColorScheme(
      //   primary: Colors.yellow,
      //   brightness: Brightness.dark,
      //   background: Colors.black,
      //   onPrimary: Colors.black,
      //   secondary: Colors.grey,
      //   onSecondary: Colors.white,
      //   error: Colors.red,
      //   onError: Colors.white,
      //   onBackground: Colors.white10,
      //   surface: Colors.white,
      //   onSurface: Colors.white,
      // ),
      iconTheme: const IconThemeData(
        size: 13,
        color: Colors.grey,
      ),
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
          fontSize: 45,
          height: 1.09,
        ),
      ),
    );
  }
}
