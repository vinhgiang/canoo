import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        background: Colors.black,
        onBackground: Colors.white10,
        primary: Colors.yellow,
        onPrimary: Colors.black,
        secondary: Colors.grey,
        onSecondary: Colors.white,
        tertiary: Color.fromRGBO(255, 188, 53, 1),
        onTertiaryContainer: Color.fromRGBO(236, 174, 52, 1),
        onTertiary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.white,
        outline: Color.fromRGBO(221, 164, 48, 1),
      ),
      iconTheme: const IconThemeData(
        size: 13,
        color: Colors.grey,
      ),
      textTheme: const TextTheme(
        displaySmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 90,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
          fontSize: 37,
        ),
        headlineLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
          fontSize: 45,
          height: 1.09,
        ),
        titleSmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 16,
        ),
        titleMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 22,
          height: 1.27,
        ),
        titleLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 27,
          height: 1.1,
        ),
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
          fontSize: 19,
          height: 1,
        ),
        labelSmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
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
