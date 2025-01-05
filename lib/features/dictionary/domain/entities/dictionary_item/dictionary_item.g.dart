// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionaryItemImpl _$$DictionaryItemImplFromJson(Map<String, dynamic> json) =>
    _$DictionaryItemImpl(
      langFrom: json['lang_from'] as String,
      langTo: json['lang_to'] as String,
      wordFrom:
          DictionaryWord.fromJson(json['word_from'] as Map<String, dynamic>),
      wordTo: DictionaryWord.fromJson(json['word_to'] as Map<String, dynamic>),
      userDefinition: json['user_definition'] as String,
      metadata: json['metadata'] == null
          ? null
          : DictionaryItemMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DictionaryItemImplToJson(
        _$DictionaryItemImpl instance) =>
    <String, dynamic>{
      'lang_from': instance.langFrom,
      'lang_to': instance.langTo,
      'word_from': instance.wordFrom,
      'word_to': instance.wordTo,
      'user_definition': instance.userDefinition,
      'metadata': instance.metadata,
    };

_$DictionaryWordImpl _$$DictionaryWordImplFromJson(Map<String, dynamic> json) =>
    _$DictionaryWordImpl(
      word: json['word'] as String,
      pronunciation: json['pronunciation'] as String?,
      details: (json['details'] as List<dynamic>)
          .map((e) => DictionaryWordDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DictionaryWordImplToJson(
        _$DictionaryWordImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'pronunciation': instance.pronunciation,
      'details': instance.details,
    };

_$DetailImpl _$$DetailImplFromJson(Map<String, dynamic> json) => _$DetailImpl(
      type: json['type'] as String,
      description: json['description'] as String,
      example: json['example'] as String?,
    );

Map<String, dynamic> _$$DetailImplToJson(_$DetailImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
      'example': instance.example,
    };

_$DictionaryItemMetadataImpl _$$DictionaryItemMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryItemMetadataImpl(
      userId: (json['user_id'] as num?)?.toInt(),
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$$DictionaryItemMetadataImplToJson(
        _$DictionaryItemMetadataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'timestamp': instance.timestamp,
    };
