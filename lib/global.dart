import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:neumorphic/neumorphic.dart' as neu;

// Custom colors
final Color _darkGrey = Color(0xFF121212); // Recommended for surfaces
final Color _grey950 = Color(0xFF191919);

// Text Theme
final TextTheme textTheme = TextTheme(
    headline1: TextStyle(
        fontFamily: 'Comfortaa',
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5),
    headline2: TextStyle(
        fontFamily: 'Comfortaa',
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5),
    headline3: TextStyle(
        fontFamily: 'Comfortaa',
        fontSize: 48,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0),
    headline4: TextStyle(
        fontFamily: 'Comfortaa',
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25),
    headline5: TextStyle(
        fontFamily: 'Comfortaa',
        fontSize: 24,
        fontWeight: FontWeight.w400,
        letterSpacing: 0),
    headline6: TextStyle(
        fontFamily: 'Comfortaa',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15),
    subtitle1: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15),
    subtitle2: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1),
    bodyText1: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5),
    bodyText2: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25),
    button: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25),
    caption: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4),
    overline: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5));

enum ThemeKeys { LIGHT, DARK, NEULIGHT, NEUDARK}

class Themes {
  static final ColorScheme _lightScheme = ColorScheme(
    brightness: Brightness.light,
    surface: Colors.white,
    onSurface: Colors.black,
    background: Colors.grey[100],
    onBackground: Colors.black,
    primary: Colors.grey[50],
    primaryVariant: Colors.grey[200],
    onPrimary: Colors.black,
    secondary: _darkGrey,
    secondaryVariant: Colors.grey[900],
    onSecondary: Colors.white,
    error: Color(0xFFD94111),
    onError: Colors.white
  );
  static final TextTheme _lightTextTheme = textTheme.apply(
    displayColor: Colors.black, bodyColor: Colors.black
  );
  static final ColorScheme _darkScheme = ColorScheme(
    brightness: Brightness.dark,
    surface: _darkGrey,
    onSurface: Colors.white,
    background: Colors.black,
    onBackground: Colors.white,
    primary: Colors.grey[900],
    primaryVariant: _grey950,
    onPrimary: Colors.white,
    secondary: Colors.grey[50],
    secondaryVariant: Colors.grey[200],
    onSecondary: Colors.black,
    error: Color(0xFFCF6679),
    onError: Colors.black
  );
  static final TextTheme _darkTextTheme = textTheme.apply(
    displayColor: Colors.white, bodyColor: Colors.white
  );
  static final ThemeData lightTheme = _buildTheme(
    ThemeData.from(colorScheme: _lightScheme, textTheme: _lightTextTheme)
  );
  static final ThemeData darkTheme = _buildTheme(
    ThemeData.from(colorScheme: _darkScheme, textTheme: _darkTextTheme)
  );
  // static final ThemeData neulightTheme = _buildTheme(
  //   neu.NeuThemeData.from(colorScheme: _lightScheme, textTheme: _lightTextTheme)
  // );
  // static final ThemeData neudarkTheme = _buildTheme(
  //   neu.NeuThemeData.from(colorScheme: _darkScheme, textTheme: _darkTextTheme)
  // );

  static ThemeData getThemeFromKey(ThemeKeys themeKey) {
    switch (themeKey) {
      case ThemeKeys.LIGHT:
        return lightTheme;
      case ThemeKeys.DARK:
        return darkTheme;
      // case ThemeKeys.NEULIGHT:
      //   return neulightTheme;
      // case ThemeKeys.NEUDARK:
      //   return neudarkTheme;
      default:
        return lightTheme;
    }
  }
}

ThemeData _buildTheme(ThemeData base) {
  return base.copyWith(
    cupertinoOverrideTheme: CupertinoThemeData(
      brightness: base.brightness,
      barBackgroundColor: Colors.transparent,
      scaffoldBackgroundColor: base.colorScheme.background,
      primaryColor: base.colorScheme.secondary
    ),
    appBarTheme: base.appBarTheme.copyWith(
        elevation: 0,
        color: Colors.transparent,
        iconTheme: IconThemeData(color: base.colorScheme.secondaryVariant)),
    cardTheme: base.cardTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    chipTheme: base.chipTheme.copyWith(
      selectedColor: base.colorScheme.secondary,
      checkmarkColor: base.colorScheme.onSecondary
    ),
    bottomAppBarColor: base.colorScheme.background,
    buttonTheme: base.buttonTheme.copyWith(
      textTheme: ButtonTextTheme.primary,
      buttonColor: base.colorScheme.secondaryVariant,
      colorScheme: base.colorScheme.copyWith(
          primary: base.colorScheme.secondary,
          primaryVariant: base.colorScheme.secondaryVariant,
          onPrimary: base.colorScheme.onSecondary),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: base.colorScheme.surface,
      foregroundColor: base.colorScheme.onSurface
    ),
    dialogTheme: base.dialogTheme.copyWith(
      backgroundColor: base.colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    popupMenuTheme: base.popupMenuTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    cursorColor: base.colorScheme.secondary,
    textSelectionHandleColor: base.colorScheme.secondaryVariant,
    textSelectionColor: base.colorScheme.primaryVariant,
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      counterStyle: base.textTheme.bodyText2,
      border: InputBorder.none,
    ),
  );
}
