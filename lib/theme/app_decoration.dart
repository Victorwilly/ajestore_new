import 'package:flutter/material.dart';
import 'package:ajestores/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue100,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillBluegray10030 => BoxDecoration(
        color: appTheme.blueGray10030,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray20002,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA700,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.19),
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.09),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientLightBlueAToIndigoA => BoxDecoration(
        color: appTheme.gray10001,
        gradient: LinearGradient(
          begin: Alignment(-0.01, -0.03),
          end: Alignment(1.02, 1),
          colors: [
            appTheme.lightBlueA70001,
            appTheme.indigoA700,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.06, 0.06),
          end: Alignment(1.02, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueA700,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineDeepOrangeA => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.deepOrangeA400.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 4.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );

  // Custom borders
  static BorderRadius get customBorderLR30 => BorderRadius.horizontal(
        right: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder104 => BorderRadius.circular(
        104.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder78 => BorderRadius.circular(
        78.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

// double get strokeAlignInside => BorderSide.strokeAlignInside;

// double get strokeAlignCenter => BorderSide.strokeAlignCenter;

// double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
