// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionaryStateImpl _$$DictionaryStateImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryStateImpl(
      focusedDate: DateTime.parse(json['focusedDate'] as String),
    );

Map<String, dynamic> _$$DictionaryStateImplToJson(
        _$DictionaryStateImpl instance) =>
    <String, dynamic>{
      'focusedDate': instance.focusedDate.toIso8601String(),
    };
