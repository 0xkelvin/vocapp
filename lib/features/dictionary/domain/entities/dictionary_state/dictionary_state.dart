import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_state.freezed.dart';
part 'dictionary_state.g.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const factory DictionaryState({
    required DateTime focusedDate,
  }) = _DictionaryState;

  factory DictionaryState.fromJson(Map<String, dynamic> json) =>
      _$DictionaryStateFromJson(json);
}
