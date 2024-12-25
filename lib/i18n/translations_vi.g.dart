///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsVi implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsVi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.vi,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );

  /// Metadata for the translations of <vi>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsVi _root = this; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsGeneralVi general = _TranslationsGeneralVi._(_root);
}

// Path: general
class _TranslationsGeneralVi implements TranslationsGeneralEn {
  _TranslationsGeneralVi._(this._root);

  final TranslationsVi _root; // ignore: unused_field

  // Translations
  @override
  String hello({required Object name}) => 'Xin chào, ${name}!';
}
