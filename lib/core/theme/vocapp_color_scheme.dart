import 'package:flutter/material.dart';

import 'vocapp_palette.dart';

class VocappColorScheme extends ThemeExtension<VocappColorScheme> {
  const VocappColorScheme({
    required this.primaryColor,
    required this.secondaryColor,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.textPrimary,
    required this.neutral10,
    required this.neutral20,
    required this.neutral30,
    required this.neutral40,
    required this.neutral50,
    required this.neutral60,
    required this.neutral70,
    required this.neutral80,
    required this.neutral90,
    required this.neutral100,
  });

  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color textPrimary;

  final Color neutral10;
  final Color neutral20;
  final Color neutral30;
  final Color neutral40;
  final Color neutral50;
  final Color neutral60;
  final Color neutral70;
  final Color neutral80;
  final Color neutral90;
  final Color neutral100;

  factory VocappColorScheme.dark() => const VocappColorScheme(
        primaryColor: VocappPalette.darkPrimaryColor,
        secondaryColor: VocappPalette.darkSecondaryColor,
        backgroundPrimary: VocappPalette.darkBackgroundPrimary,
        backgroundSecondary: VocappPalette.darkBackgroundSecondary,
        textPrimary: VocappPalette.darkTextPrimary,
        neutral10: VocappPalette.neutral10,
        neutral20: VocappPalette.neutral20,
        neutral30: VocappPalette.neutral30,
        neutral40: VocappPalette.neutral40,
        neutral50: VocappPalette.neutral50,
        neutral60: VocappPalette.neutral60,
        neutral70: VocappPalette.neutral70,
        neutral80: VocappPalette.neutral80,
        neutral90: VocappPalette.neutral90,
        neutral100: VocappPalette.neutral100,
      );

  @override
  ThemeExtension<VocappColorScheme> copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? textPrimary,
    Color? neutral10,
    Color? neutral20,
    Color? neutral30,
    Color? neutral40,
    Color? neutral50,
    Color? neutral60,
    Color? neutral70,
    Color? neutral80,
    Color? neutral90,
    Color? neutral100,
  }) =>
      VocappColorScheme(
        primaryColor: primaryColor ?? this.primaryColor,
        secondaryColor: secondaryColor ?? this.primaryColor,
        backgroundPrimary: backgroundPrimary ?? this.primaryColor,
        backgroundSecondary: backgroundSecondary ?? this.primaryColor,
        textPrimary: textPrimary ?? this.primaryColor,
        neutral10: neutral10 ?? this.primaryColor,
        neutral20: neutral20 ?? this.primaryColor,
        neutral30: neutral30 ?? this.primaryColor,
        neutral40: neutral40 ?? this.primaryColor,
        neutral50: neutral50 ?? this.primaryColor,
        neutral60: neutral60 ?? this.primaryColor,
        neutral70: neutral70 ?? this.primaryColor,
        neutral80: neutral80 ?? this.primaryColor,
        neutral90: neutral90 ?? this.primaryColor,
        neutral100: neutral100 ?? this.primaryColor,
      );

  @override
  ThemeExtension<VocappColorScheme> lerp(
    covariant ThemeExtension<VocappColorScheme>? other,
    double t,
  ) =>
      other is! VocappColorScheme
          ? this
          : VocappColorScheme(
              primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
              secondaryColor:
                  Color.lerp(secondaryColor, other.secondaryColor, t)!,
              backgroundPrimary:
                  Color.lerp(backgroundPrimary, other.backgroundPrimary, t)!,
              backgroundSecondary: Color.lerp(
                  backgroundSecondary, other.backgroundSecondary, t)!,
              textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
              neutral10: Color.lerp(neutral10, other.neutral10, t)!,
              neutral20: Color.lerp(neutral20, other.neutral20, t)!,
              neutral30: Color.lerp(neutral30, other.neutral30, t)!,
              neutral40: Color.lerp(neutral40, other.neutral40, t)!,
              neutral50: Color.lerp(neutral50, other.neutral50, t)!,
              neutral60: Color.lerp(neutral60, other.neutral60, t)!,
              neutral70: Color.lerp(neutral70, other.neutral70, t)!,
              neutral80: Color.lerp(neutral80, other.neutral80, t)!,
              neutral90: Color.lerp(neutral90, other.neutral90, t)!,
              neutral100: Color.lerp(neutral100, other.neutral100, t)!,
            );
}
