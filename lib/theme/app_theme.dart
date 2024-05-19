import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      // colorScheme: ColorScheme.fromSwatch(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.yellow,
      //   backgroundColor: Colors.black,
      // ),
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        background: Colors.black,
        onBackground: Colors.white10,
        primary: Colors.yellow,
        onPrimary: Colors.black,
        secondary: Colors.grey,
        onSecondary: Colors.white,
        tertiary: Color.fromRGBO(255, 188, 53, 1),
        onTertiary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.white,
      ),
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
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
    );
  }
}
