import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargePoppinsOnSecondaryContainer =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyLargePoppinsWhiteA700 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get bodyMediumLatoOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.lato.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumLatoPrimary => theme.textTheme.bodyMedium!.lato.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumPoppinsBluegray100 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray100,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumPoppinsOnSecondaryContainer_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumPoppinsPrimary =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get bodySmallBluegray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray100,
        fontSize: 12.fSize,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsOnError =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsOnPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsOnSecondaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsOnSecondaryContainer12 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsPrimary =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsWhiteA700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 9.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  // Label text style
  static get labelLargeGray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray50001SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsOrange300 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.orange300,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsSecondaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeRedA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA700,
      );
  static get labelMediumGray80004 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80004,
        fontWeight: FontWeight.w600,
      );
  // Montserrat text style
  static get montserratPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).montserrat;
  // Poppins text style
  static get poppinsDeeppurple900 => TextStyle(
        color: appTheme.deepPurple900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  // Title text style
  static get titleLargeGray80003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80003,
      );
  static get titleLargeGray80004 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80004,
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargePoppinsOnSecondaryContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeSFProDisplayGray50001 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.gray50001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 19.fSize,
      );
  static get titleMediumGray80004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80004,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlueA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA70001,
        fontSize: 14.fSize,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray800 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray800,
        fontSize: 14.fSize,
      );
  static get titleSmallPoppinsGray80004 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray80004,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsOnSecondaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
