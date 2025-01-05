enum LanguangeType {
  viVI,
  enUS;

  static LanguangeType? fromLocaleCode(String code) => switch (code) {
        'vi_VI' => viVI,
        'en_US' => enUS,
        _ => null,
      };

  String get flag => switch (this) {
        LanguangeType.viVI => '🇻🇳',
        LanguangeType.enUS => '🇺🇸',
      };

  String get displayName => switch (this) {
        LanguangeType.viVI => 'Tiếng Việt',
        LanguangeType.enUS => 'English',
      };

  String get nameWithFlag => switch (this) {
        LanguangeType.viVI => '🇻🇳 Tiếng Việt',
        LanguangeType.enUS => '🇺🇸 English',
      };
}
