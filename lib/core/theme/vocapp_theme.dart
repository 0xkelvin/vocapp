import 'package:flutter/material.dart';

import 'vocapp_color_scheme.dart';
import 'vocapp_palette.dart';

class VocappTheme {
  static ThemeData dark() => ThemeData(
        /* Fonts */
        fontFamily: 'DM Sans',

        /* Color */
        extensions: [VocappColorScheme.dark()],
        scaffoldBackgroundColor: VocappPalette.darkBackgroundPrimary,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: VocappPalette.darkPrimaryColor,
          onPrimary: VocappPalette.neutral60,
          secondary: VocappPalette.darkSecondaryColor,
          onSecondary: VocappPalette.neutral60,
          error: VocappPalette.darkErrorColor,
          onError: VocappPalette.darkTextPrimary,
          surface: VocappPalette.darkBackgroundSecondary,
          onSurface: VocappPalette.neutral10,
        ),
      );
}

extension AppThemeExtension on ThemeData {
  VocappColorScheme get appColorScheme =>
      extension<VocappColorScheme>() ?? VocappColorScheme.dark();

  bool get isDark => brightness == Brightness.dark;
  bool get isLight => brightness == Brightness.light;
}

extension ThemeGetter on BuildContext {
  ThemeData get theme => Theme.of(this);
  VocappColorScheme get appColor => Theme.of(this).appColorScheme;
}
