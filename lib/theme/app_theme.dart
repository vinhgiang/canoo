import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static Color discountPercentageColor = const Color.fromRGBO(255, 188, 53, 1);
  static Color sponsoredByContainerBg = const Color.fromRGBO(234, 234, 234, 1);

  static discountPercentageTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.displaySmall!.copyWith(
          color: Theme.of(context).colorScheme.onTertiary,
          height: 0.8,
        );
  }

  static ButtonStyle getPrimaryButtonLargeStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(15),
      textStyle: Theme.of(context).textTheme.titleMedium,
    );
  }

  static ButtonTextStyle getRadioButtonStyle(BuildContext context) {
    return ButtonTextStyle(
      selectedColor: Theme.of(context).colorScheme.onPrimary,
      unSelectedColor: Theme.of(context).colorScheme.secondary,
      textStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.w500,
          ),
    );
  }

  static TextStyle getVoucherValueStyle(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Theme.of(context).colorScheme.onInverseSurface,
        );
  }

  static TextStyle getVoucherTitleStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
        );
  }

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
        surface: Colors.black,
        inverseSurface: Colors.white,
        onSurface: Colors.white,
        onInverseSurface: Colors.black,
        outline: Color.fromRGBO(221, 164, 48, 1),
      ),
      iconTheme: const IconThemeData(
        size: 13,
        color: Colors.grey,
      ),
      textTheme: const TextTheme(
        displaySmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 80,
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 90,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 30,
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
          fontSize: 42,
          height: 1.09,
        ),
        // fixed with pixel perfect
        titleSmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 18,
          height: 1.35,
        ),
        // fixed with pixel perfect
        titleMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 21,
          height: 1.27,
        ),
        titleLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
          fontSize: 27,
          height: 1.1,
        ),
        bodySmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        // fixed with pixel perfect
        bodyMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 15.5,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w500,
          fontSize: 17.8,
          height: 1.2,
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
      // TODO: move this to buttonStyle so that we can use elevatedButton
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white, // Text color
          backgroundColor: Colors.white10, // Background color
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          padding: const EdgeInsets.only(left: 25, right: 25),
        ),
      ),
      cardTheme: const CardTheme(
        // This is for CustomRadioButton because that package uses Card behind the scenes
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
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
