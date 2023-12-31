import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray40002,
          fontSize: 14.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray80004,
          fontSize: 11.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.orange300,
          fontSize: 55.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 35.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 30.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: appTheme.orange300,
          fontSize: 26.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray80002,
          fontSize: 25.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray80004,
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray50001,
          fontSize: 10.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray80004,
          fontSize: 9.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 22.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray800,
          fontSize: 16.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 15.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF0082FF),
    primaryContainer: Color(0XFF000AFF),
    secondaryContainer: Color(0XFF000000),

    // Error colors
    errorContainer: Color(0XFF2157F2),
    onError: Color(0XFF8B8B8B),

    // On colors(text colors)
    onPrimary: Color(0XFF0702FE),
    onPrimaryContainer: Color(0XFF9D9D9D),
    onSecondaryContainer: Color(0XFF262626),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Blue
  Color get blue100 => Color(0XFFCFE7FF);
  Color get blueA700 => Color(0XFF0F4FF9);
  Color get blueA70001 => Color(0XFF086BF9);

  // BlueGray
  Color get blueGray100 => Color(0XFFCFCFCF);
  Color get blueGray10030 => Color(0X30CCCCCC);

  // DeepOrange
  Color get deepOrangeA400 => Color(0XFFFF5500);

  // DeepPurple
  Color get deepPurple900 => Color(0XFF140AAD);

  // Gray
  Color get gray100 => Color(0XFFF6F6F6);
  Color get gray10001 => Color(0XFFF7F6F4);
  Color get gray10002 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFEDEDED);
  Color get gray20001 => Color(0XFFEBEBEB);
  Color get gray20002 => Color(0XFFE8E8E8);
  Color get gray300 => Color(0XFFDDDDDD);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray40001 => Color(0XFFBABABA);
  Color get gray40002 => Color(0XFFC7C7C7);
  Color get gray40003 => Color(0XFFB3B3B3);
  Color get gray40004 => Color(0XFFCCC6BA);
  Color get gray50 => Color(0XFFF9F8F6);
  Color get gray500 => Color(0XFF9A9A9A);
  Color get gray50001 => Color(0XFF909090);
  Color get gray800 => Color(0XFF3F4343);
  Color get gray80001 => Color(0XFF3C3C3C);
  Color get gray80002 => Color(0XFF393939);
  Color get gray80003 => Color(0XFF3B3B3B);
  Color get gray80004 => Color(0XFF343A40);

  // Indigo
  Color get indigoA700 => Color(0XFF114AF8);

  // LightBlue
  Color get lightBlueA700 => Color(0XFF017EFF);
  Color get lightBlueA70001 => Color(0XFF037CFA);

  // Orange
  Color get orange300 => Color(0XFFF4BD46);
  Color get orange30001 => Color(0XFFE6BB66);

  // Red
  Color get redA700 => Color(0XFFFF0000);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
