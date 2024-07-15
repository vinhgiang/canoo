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
    return Theme.of(context).textTheme.titleSmall!.copyWith(
          color: Theme.of(context).colorScheme.onInverseSurface,
        );
  }

  static TextStyle getVoucherTitleStyle(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
        );
  }

  static Color getModalBackgroundColor(BuildContext context) {
    return const Color.fromARGB(255, 17, 17, 17);
  }

  static ButtonStyle getInactiveFilledButtonStyle(BuildContext context) {
    return Theme.of(context).filledButtonTheme.style!.copyWith(
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.white10,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.grey,
          ),
        );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        background: Colors.black,
        onBackground: Color.fromRGBO(26, 26, 26, 1),
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
        // fixed with pixel perfect
        displaySmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 75,
          fontWeight: FontWeight.w600,
        ),
        // fixed with pixel perfect
        displayMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 80,
          fontWeight: FontWeight.w600,
        ),
        // fixed with pixel perfect
        headlineSmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 28.5,
          fontWeight: FontWeight.w600,
        ),
        // fixed with pixel perfect
        headlineMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
          fontSize: 33.3,
          height: 1.2,
        ),
        // fixed with pixel perfect
        headlineLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
          fontSize: 44.5,
          height: 1.09,
        ),
        // fixed with pixel perfect
        titleSmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
          fontSize: 18,
          height: 1.35,
        ),
        // fixed with pixel perfect
        titleMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 21,
          height: 1.27,
        ),
        // fixed with pixel perfect
        titleLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w600,
          fontSize: 24,
          height: 1.07,
          letterSpacing: 0.3,
        ),
        // fixed with pixel perfect
        bodySmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        // fixed with pixel perfect
        bodyMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 15.5,
          fontWeight: FontWeight.w500,
          height: 1.29,
        ),
        // fixed with pixel perfect
        bodyLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontWeight: FontWeight.w500,
          fontSize: 17,
          height: 1.25,
        ),
        // fixed with pixel perfect
        labelSmall: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 14,
          color: Colors.grey,
          height: 1.58,
        ),
        // fixed with pixel perfect
        labelMedium: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 15.9,
        ),
        // fixed with pixel perfect
        labelLarge: TextStyle(
          fontFamily: 'PPNeueMontreal',
          fontSize: 20,
          height: 1.2,
          letterSpacing: 0,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.all(0),
          ),
        ),
      ),
      // fixed with pixel perfect
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          padding: const EdgeInsets.fromLTRB(26, 14, 26, 14),
          textStyle: const TextStyle(
            fontFamily: 'PPNeueMontreal',
            fontSize: 18,
            height: 1.35,
          ),
        ),
      ),
      // fixed with pixel perfect
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white, // Text color
          backgroundColor: Colors.white10, // Background color
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          padding: const EdgeInsets.fromLTRB(26, 14, 26, 14),
          textStyle: const TextStyle(
            fontFamily: 'PPNeueMontreal',
            fontSize: 18,
            height: 1.35,
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.only(left: 17, right: 17),
          minimumSize: const Size(30, 32),
          textStyle: const TextStyle(
            fontFamily: 'PPNeueMontreal',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
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
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.yellow;
          }
          return Colors.grey;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          return const Color.fromARGB(0, 0, 0, 0);
        }),
        trackOutlineColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.yellow;
          }
          return Colors.grey;
        }),
      ),
    );
  }
}
