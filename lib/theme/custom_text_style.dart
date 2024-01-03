import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.64),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.6),
      );
  static get bodyLargeGray50003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50003,
      );
  static get bodyLargeGray900dd => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900Dd,
      );
  static get bodyLargeGreen300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green300,
      );
  static get bodyLargeIndigoA40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigoA40001,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargePink300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.pink300,
      );
  static get bodyLargePoppins => theme.textTheme.bodyLarge!.poppins;
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 17.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack9000113 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack9000115 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack90001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumBluegray40099 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40099,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyMediumCenturyGothicGray50002 =>
      theme.textTheme.bodyMedium!.centuryGothic.copyWith(
        color: appTheme.gray50002,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray60005 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60005,
      );
  static get bodyMediumGray80075 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80075,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumLeagueSpartanGray40001 =>
      theme.textTheme.bodyMedium!.leagueSpartan.copyWith(
        color: appTheme.gray40001,
        fontSize: 13.fSize,
      );
  static get bodyMediumLeagueSpartanGray70001 =>
      theme.textTheme.bodyMedium!.leagueSpartan.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyMediumLeagueSpartanSecondaryContainer =>
      theme.textTheme.bodyMedium!.leagueSpartan.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimaryThin => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumOnPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPoppinsBlack90001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumPoppinsBlue700 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blue700,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsGray60001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray60001,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsGray900cc =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray900Cc,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallBlack9000110 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack9000110_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack9000110_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900018 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 8.fSize,
      );
  static get bodySmallBlack900018_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 8.fSize,
      );
  static get bodySmallBlack900019 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 9.fSize,
      );
  static get bodySmallBlack90001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001.withOpacity(0.6),
      );
  static get bodySmallBluegray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray80001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodySmallCenturyGothicGray50002 =>
      theme.textTheme.bodySmall!.centuryGothic.copyWith(
        color: appTheme.gray50002,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallGray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40002,
        fontSize: 10.fSize,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
        fontSize: 11.fSize,
      );
  static get bodySmallGray5000110 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
        fontSize: 10.fSize,
      );
  static get bodySmallGray50001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray50003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50003,
      );
  static get bodySmallGray5000311 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50003,
        fontSize: 11.fSize,
      );
  static get bodySmallInterGray40003 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray40003,
        fontSize: 8.fSize,
      );
  static get bodySmallLeagueSpartanGray60003 =>
      theme.textTheme.bodySmall!.leagueSpartan.copyWith(
        color: appTheme.gray60003,
      );
  static get bodySmallLeagueSpartanGray60004 =>
      theme.textTheme.bodySmall!.leagueSpartan.copyWith(
        color: appTheme.gray60004,
      );
  static get bodySmallLeagueSpartanWhiteA700 =>
      theme.textTheme.bodySmall!.leagueSpartan.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsBlue700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blue700,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsGray50001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray50001,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsGray60001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallPoppinsGray700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsWhiteA700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Display text style
  static get displayMediumCyanA400 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.cyanA400,
        fontSize: 40.fSize,
      );
  static get displayMediumGilroyBluegray80002 =>
      theme.textTheme.displayMedium!.gilroy.copyWith(
        color: appTheme.blueGray80002,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w600,
      );
  static get displayMediumLeagueSpartan =>
      theme.textTheme.displayMedium!.leagueSpartan.copyWith(
        fontSize: 41.fSize,
        fontWeight: FontWeight.w800,
      );
  static get displayMediumPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 40.fSize,
      );
  static get displaySmallBluegray80002 =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.blueGray80002,
        fontSize: 35.fSize,
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 25.fSize,
      );
  static get headlineSmallBlack90001Medium =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallLeagueSpartan =>
      theme.textTheme.headlineSmall!.leagueSpartan;
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  // Kumbh text style
  static get kumbhSansBlack90001 => TextStyle(
        color: appTheme.black90001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).kumbhSans;
  static get kumbhSansBlack90001Medium => TextStyle(
        color: appTheme.black90001,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).kumbhSans;
  static get kumbhSansGray50005 => TextStyle(
        color: appTheme.gray50005,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).kumbhSans;
  static get kumbhSansGray50005Medium => TextStyle(
        color: appTheme.gray50005,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).kumbhSans;
  static get kumbhSansGray50005Regular => TextStyle(
        color: appTheme.gray50005,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).kumbhSans;
  static get kumbhSansGray600 => TextStyle(
        color: appTheme.gray600,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).kumbhSans;
  static get kumbhSansGray900cc => TextStyle(
        color: appTheme.gray900Cc,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).kumbhSans;
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLarge12_1 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack9000112 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
      );
  static get labelLargeBlack90001SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack90001SemiBold12 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack90001SemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack90001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get labelLargeBlack90001_2 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get labelLargeBlack90001_3 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get labelLargeBluegray10003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray10003,
      );
  static get labelLargeGray40003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40003,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
      );
  static get labelLargeGray900cc => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900Cc,
      );
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsBlack90001 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsBlack90001SemiBold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsBlack90001SemiBold_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack90001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack9000111 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 11.fSize,
      );
  static get labelMediumBlack90001Bold => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack90001Bold_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack90001Bold_2 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack90001SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack90001SemiBold_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack90001_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get labelMediumBlack90001_2 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get labelMediumGray40003 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray40003,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray50005 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50005,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumPrimary_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMedium_1 => theme.textTheme.labelMedium!;
  static get labelSmall9 => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get labelSmallGray50005 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray50005,
      );
  static get labelSmallGray50005_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray50005,
      );
  static get labelSmallGray900cc => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray900Cc,
        fontSize: 9.fSize,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallSemiBold => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallSemiBold_1 => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLarge21 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
      );
  static get titleLargeBluegray10003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray10003,
      );
  static get titleLargeLeagueSpartanBlack900 =>
      theme.textTheme.titleLarge!.leagueSpartan.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontSize: 21.fSize,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium19 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.53),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumErrorContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray50007 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50007,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserratLightblue800 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.lightBlue800,
      );
  static get titleMediumMontserratWhiteA700 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumNunitoWhiteA700 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsWhiteA700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumPoppins_1 => theme.textTheme.titleMedium!.poppins;
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryMedium => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallBlack9000114 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get titleSmallBlack9000114_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get titleSmallBlack9000114_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get titleSmallBlack90001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallIndigoA40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA40001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallIndigoA40002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA40002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterGray500 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 14.fSize,
      );
  static get titleSmallInterWhiteA700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get titleSmallLeagueSpartanBlack90001 =>
      theme.textTheme.titleSmall!.leagueSpartan.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallLeagueSpartanGray70001 =>
      theme.textTheme.titleSmall!.leagueSpartan.copyWith(
        color: appTheme.gray70001,
        fontSize: 14.fSize,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallOnErrorContainer14 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallPoppinsBlack90001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBlack9000114 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get titleSmallPoppinsBlack9000114_1 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get titleSmallPoppinsBlack90001SemiBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get centuryGothic {
    return copyWith(
      fontFamily: 'Century Gothic',
    );
  }

  TextStyle get kumbhSans {
    return copyWith(
      fontFamily: 'Kumbh Sans',
    );
  }

  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy',
    );
  }

  TextStyle get leagueSpartan {
    return copyWith(
      fontFamily: 'League Spartan',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
