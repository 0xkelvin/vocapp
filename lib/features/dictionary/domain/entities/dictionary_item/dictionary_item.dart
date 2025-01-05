import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/languange_type.dart';

part 'dictionary_item.freezed.dart';
part 'dictionary_item.g.dart';

@freezed
class DictionaryItem with _$DictionaryItem {
  const factory DictionaryItem({
    @JsonKey(name: 'lang_from') required String langFrom,
    @JsonKey(name: 'lang_to') required String langTo,
    @JsonKey(name: 'word_from') required DictionaryWord wordFrom,
    @JsonKey(name: 'word_to') required DictionaryWord wordTo,
    @JsonKey(name: 'user_definition') required String userDefinition,
    @Default(null) DictionaryItemMetadata? metadata,
  }) = _DictionaryItem;

  factory DictionaryItem.fromJson(Map<String, dynamic> json) =>
      _$DictionaryItemFromJson(json);

  static List<DictionaryItem> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) => DictionaryItem.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}

extension DicionaryItemHelper on DictionaryItem {
  LanguangeType get languageFrom =>
      LanguangeType.fromLocaleCode(langFrom) ?? LanguangeType.viVI;
  LanguangeType get languageTo =>
      LanguangeType.fromLocaleCode(langTo) ?? LanguangeType.enUS;
}

@freezed
class DictionaryWord with _$DictionaryWord {
  const factory DictionaryWord({
    required String word,
    String? pronunciation,
    required List<DictionaryWordDetail> details,
  }) = _DictionaryWord;

  factory DictionaryWord.fromJson(Map<String, dynamic> json) =>
      _$DictionaryWordFromJson(json);
}

@freezed
class DictionaryWordDetail with _$DictionaryWordDetail {
  const factory DictionaryWordDetail({
    required String type,
    required String description,
    String? example,
  }) = _Detail;

  factory DictionaryWordDetail.fromJson(Map<String, dynamic> json) =>
      _$DictionaryWordDetailFromJson(json);
}

@freezed
class DictionaryItemMetadata with _$DictionaryItemMetadata {
  const factory DictionaryItemMetadata({
    @JsonKey(name: 'user_id') int? userId,
    String? timestamp,
  }) = _DictionaryItemMetadata;

  factory DictionaryItemMetadata.fromJson(Map<String, dynamic> json) =>
      _$DictionaryItemMetadataFromJson(json);
}
