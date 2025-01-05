// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DictionaryItem _$DictionaryItemFromJson(Map<String, dynamic> json) {
  return _DictionaryItem.fromJson(json);
}

/// @nodoc
mixin _$DictionaryItem {
  @JsonKey(name: 'lang_from')
  String get langFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang_to')
  String get langTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'word_from')
  DictionaryWord get wordFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'word_to')
  DictionaryWord get wordTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_definition')
  String get userDefinition => throw _privateConstructorUsedError;
  DictionaryItemMetadata? get metadata => throw _privateConstructorUsedError;

  /// Serializes this DictionaryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryItemCopyWith<DictionaryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryItemCopyWith<$Res> {
  factory $DictionaryItemCopyWith(
          DictionaryItem value, $Res Function(DictionaryItem) then) =
      _$DictionaryItemCopyWithImpl<$Res, DictionaryItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lang_from') String langFrom,
      @JsonKey(name: 'lang_to') String langTo,
      @JsonKey(name: 'word_from') DictionaryWord wordFrom,
      @JsonKey(name: 'word_to') DictionaryWord wordTo,
      @JsonKey(name: 'user_definition') String userDefinition,
      DictionaryItemMetadata? metadata});

  $DictionaryWordCopyWith<$Res> get wordFrom;
  $DictionaryWordCopyWith<$Res> get wordTo;
  $DictionaryItemMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$DictionaryItemCopyWithImpl<$Res, $Val extends DictionaryItem>
    implements $DictionaryItemCopyWith<$Res> {
  _$DictionaryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langFrom = null,
    Object? langTo = null,
    Object? wordFrom = null,
    Object? wordTo = null,
    Object? userDefinition = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      langFrom: null == langFrom
          ? _value.langFrom
          : langFrom // ignore: cast_nullable_to_non_nullable
              as String,
      langTo: null == langTo
          ? _value.langTo
          : langTo // ignore: cast_nullable_to_non_nullable
              as String,
      wordFrom: null == wordFrom
          ? _value.wordFrom
          : wordFrom // ignore: cast_nullable_to_non_nullable
              as DictionaryWord,
      wordTo: null == wordTo
          ? _value.wordTo
          : wordTo // ignore: cast_nullable_to_non_nullable
              as DictionaryWord,
      userDefinition: null == userDefinition
          ? _value.userDefinition
          : userDefinition // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as DictionaryItemMetadata?,
    ) as $Val);
  }

  /// Create a copy of DictionaryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DictionaryWordCopyWith<$Res> get wordFrom {
    return $DictionaryWordCopyWith<$Res>(_value.wordFrom, (value) {
      return _then(_value.copyWith(wordFrom: value) as $Val);
    });
  }

  /// Create a copy of DictionaryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DictionaryWordCopyWith<$Res> get wordTo {
    return $DictionaryWordCopyWith<$Res>(_value.wordTo, (value) {
      return _then(_value.copyWith(wordTo: value) as $Val);
    });
  }

  /// Create a copy of DictionaryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DictionaryItemMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $DictionaryItemMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DictionaryItemImplCopyWith<$Res>
    implements $DictionaryItemCopyWith<$Res> {
  factory _$$DictionaryItemImplCopyWith(_$DictionaryItemImpl value,
          $Res Function(_$DictionaryItemImpl) then) =
      __$$DictionaryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lang_from') String langFrom,
      @JsonKey(name: 'lang_to') String langTo,
      @JsonKey(name: 'word_from') DictionaryWord wordFrom,
      @JsonKey(name: 'word_to') DictionaryWord wordTo,
      @JsonKey(name: 'user_definition') String userDefinition,
      DictionaryItemMetadata? metadata});

  @override
  $DictionaryWordCopyWith<$Res> get wordFrom;
  @override
  $DictionaryWordCopyWith<$Res> get wordTo;
  @override
  $DictionaryItemMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$DictionaryItemImplCopyWithImpl<$Res>
    extends _$DictionaryItemCopyWithImpl<$Res, _$DictionaryItemImpl>
    implements _$$DictionaryItemImplCopyWith<$Res> {
  __$$DictionaryItemImplCopyWithImpl(
      _$DictionaryItemImpl _value, $Res Function(_$DictionaryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langFrom = null,
    Object? langTo = null,
    Object? wordFrom = null,
    Object? wordTo = null,
    Object? userDefinition = null,
    Object? metadata = freezed,
  }) {
    return _then(_$DictionaryItemImpl(
      langFrom: null == langFrom
          ? _value.langFrom
          : langFrom // ignore: cast_nullable_to_non_nullable
              as String,
      langTo: null == langTo
          ? _value.langTo
          : langTo // ignore: cast_nullable_to_non_nullable
              as String,
      wordFrom: null == wordFrom
          ? _value.wordFrom
          : wordFrom // ignore: cast_nullable_to_non_nullable
              as DictionaryWord,
      wordTo: null == wordTo
          ? _value.wordTo
          : wordTo // ignore: cast_nullable_to_non_nullable
              as DictionaryWord,
      userDefinition: null == userDefinition
          ? _value.userDefinition
          : userDefinition // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as DictionaryItemMetadata?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryItemImpl implements _DictionaryItem {
  const _$DictionaryItemImpl(
      {@JsonKey(name: 'lang_from') required this.langFrom,
      @JsonKey(name: 'lang_to') required this.langTo,
      @JsonKey(name: 'word_from') required this.wordFrom,
      @JsonKey(name: 'word_to') required this.wordTo,
      @JsonKey(name: 'user_definition') required this.userDefinition,
      this.metadata = null});

  factory _$DictionaryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryItemImplFromJson(json);

  @override
  @JsonKey(name: 'lang_from')
  final String langFrom;
  @override
  @JsonKey(name: 'lang_to')
  final String langTo;
  @override
  @JsonKey(name: 'word_from')
  final DictionaryWord wordFrom;
  @override
  @JsonKey(name: 'word_to')
  final DictionaryWord wordTo;
  @override
  @JsonKey(name: 'user_definition')
  final String userDefinition;
  @override
  @JsonKey()
  final DictionaryItemMetadata? metadata;

  @override
  String toString() {
    return 'DictionaryItem(langFrom: $langFrom, langTo: $langTo, wordFrom: $wordFrom, wordTo: $wordTo, userDefinition: $userDefinition, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryItemImpl &&
            (identical(other.langFrom, langFrom) ||
                other.langFrom == langFrom) &&
            (identical(other.langTo, langTo) || other.langTo == langTo) &&
            (identical(other.wordFrom, wordFrom) ||
                other.wordFrom == wordFrom) &&
            (identical(other.wordTo, wordTo) || other.wordTo == wordTo) &&
            (identical(other.userDefinition, userDefinition) ||
                other.userDefinition == userDefinition) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, langFrom, langTo, wordFrom,
      wordTo, userDefinition, metadata);

  /// Create a copy of DictionaryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryItemImplCopyWith<_$DictionaryItemImpl> get copyWith =>
      __$$DictionaryItemImplCopyWithImpl<_$DictionaryItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryItemImplToJson(
      this,
    );
  }
}

abstract class _DictionaryItem implements DictionaryItem {
  const factory _DictionaryItem(
      {@JsonKey(name: 'lang_from') required final String langFrom,
      @JsonKey(name: 'lang_to') required final String langTo,
      @JsonKey(name: 'word_from') required final DictionaryWord wordFrom,
      @JsonKey(name: 'word_to') required final DictionaryWord wordTo,
      @JsonKey(name: 'user_definition') required final String userDefinition,
      final DictionaryItemMetadata? metadata}) = _$DictionaryItemImpl;

  factory _DictionaryItem.fromJson(Map<String, dynamic> json) =
      _$DictionaryItemImpl.fromJson;

  @override
  @JsonKey(name: 'lang_from')
  String get langFrom;
  @override
  @JsonKey(name: 'lang_to')
  String get langTo;
  @override
  @JsonKey(name: 'word_from')
  DictionaryWord get wordFrom;
  @override
  @JsonKey(name: 'word_to')
  DictionaryWord get wordTo;
  @override
  @JsonKey(name: 'user_definition')
  String get userDefinition;
  @override
  DictionaryItemMetadata? get metadata;

  /// Create a copy of DictionaryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryItemImplCopyWith<_$DictionaryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DictionaryWord _$DictionaryWordFromJson(Map<String, dynamic> json) {
  return _DictionaryWord.fromJson(json);
}

/// @nodoc
mixin _$DictionaryWord {
  String get word => throw _privateConstructorUsedError;
  String? get pronunciation => throw _privateConstructorUsedError;
  List<DictionaryWordDetail> get details => throw _privateConstructorUsedError;

  /// Serializes this DictionaryWord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryWordCopyWith<DictionaryWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryWordCopyWith<$Res> {
  factory $DictionaryWordCopyWith(
          DictionaryWord value, $Res Function(DictionaryWord) then) =
      _$DictionaryWordCopyWithImpl<$Res, DictionaryWord>;
  @useResult
  $Res call(
      {String word, String? pronunciation, List<DictionaryWordDetail> details});
}

/// @nodoc
class _$DictionaryWordCopyWithImpl<$Res, $Val extends DictionaryWord>
    implements $DictionaryWordCopyWith<$Res> {
  _$DictionaryWordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? pronunciation = freezed,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciation: freezed == pronunciation
          ? _value.pronunciation
          : pronunciation // ignore: cast_nullable_to_non_nullable
              as String?,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DictionaryWordDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryWordImplCopyWith<$Res>
    implements $DictionaryWordCopyWith<$Res> {
  factory _$$DictionaryWordImplCopyWith(_$DictionaryWordImpl value,
          $Res Function(_$DictionaryWordImpl) then) =
      __$$DictionaryWordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word, String? pronunciation, List<DictionaryWordDetail> details});
}

/// @nodoc
class __$$DictionaryWordImplCopyWithImpl<$Res>
    extends _$DictionaryWordCopyWithImpl<$Res, _$DictionaryWordImpl>
    implements _$$DictionaryWordImplCopyWith<$Res> {
  __$$DictionaryWordImplCopyWithImpl(
      _$DictionaryWordImpl _value, $Res Function(_$DictionaryWordImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? pronunciation = freezed,
    Object? details = null,
  }) {
    return _then(_$DictionaryWordImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciation: freezed == pronunciation
          ? _value.pronunciation
          : pronunciation // ignore: cast_nullable_to_non_nullable
              as String?,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DictionaryWordDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryWordImpl implements _DictionaryWord {
  const _$DictionaryWordImpl(
      {required this.word,
      this.pronunciation,
      required final List<DictionaryWordDetail> details})
      : _details = details;

  factory _$DictionaryWordImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryWordImplFromJson(json);

  @override
  final String word;
  @override
  final String? pronunciation;
  final List<DictionaryWordDetail> _details;
  @override
  List<DictionaryWordDetail> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'DictionaryWord(word: $word, pronunciation: $pronunciation, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryWordImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.pronunciation, pronunciation) ||
                other.pronunciation == pronunciation) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, word, pronunciation,
      const DeepCollectionEquality().hash(_details));

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryWordImplCopyWith<_$DictionaryWordImpl> get copyWith =>
      __$$DictionaryWordImplCopyWithImpl<_$DictionaryWordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryWordImplToJson(
      this,
    );
  }
}

abstract class _DictionaryWord implements DictionaryWord {
  const factory _DictionaryWord(
          {required final String word,
          final String? pronunciation,
          required final List<DictionaryWordDetail> details}) =
      _$DictionaryWordImpl;

  factory _DictionaryWord.fromJson(Map<String, dynamic> json) =
      _$DictionaryWordImpl.fromJson;

  @override
  String get word;
  @override
  String? get pronunciation;
  @override
  List<DictionaryWordDetail> get details;

  /// Create a copy of DictionaryWord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryWordImplCopyWith<_$DictionaryWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DictionaryWordDetail _$DictionaryWordDetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
mixin _$DictionaryWordDetail {
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;

  /// Serializes this DictionaryWordDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryWordDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryWordDetailCopyWith<DictionaryWordDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryWordDetailCopyWith<$Res> {
  factory $DictionaryWordDetailCopyWith(DictionaryWordDetail value,
          $Res Function(DictionaryWordDetail) then) =
      _$DictionaryWordDetailCopyWithImpl<$Res, DictionaryWordDetail>;
  @useResult
  $Res call({String type, String description, String? example});
}

/// @nodoc
class _$DictionaryWordDetailCopyWithImpl<$Res,
        $Val extends DictionaryWordDetail>
    implements $DictionaryWordDetailCopyWith<$Res> {
  _$DictionaryWordDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryWordDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = null,
    Object? example = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res>
    implements $DictionaryWordDetailCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String description, String? example});
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$DictionaryWordDetailCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryWordDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? description = null,
    Object? example = freezed,
  }) {
    return _then(_$DetailImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailImpl implements _Detail {
  const _$DetailImpl(
      {required this.type, required this.description, this.example});

  factory _$DetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailImplFromJson(json);

  @override
  final String type;
  @override
  final String description;
  @override
  final String? example;

  @override
  String toString() {
    return 'DictionaryWordDetail(type: $type, description: $description, example: $example)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.example, example) || other.example == example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, description, example);

  /// Create a copy of DictionaryWordDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailImplToJson(
      this,
    );
  }
}

abstract class _Detail implements DictionaryWordDetail {
  const factory _Detail(
      {required final String type,
      required final String description,
      final String? example}) = _$DetailImpl;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$DetailImpl.fromJson;

  @override
  String get type;
  @override
  String get description;
  @override
  String? get example;

  /// Create a copy of DictionaryWordDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DictionaryItemMetadata _$DictionaryItemMetadataFromJson(
    Map<String, dynamic> json) {
  return _DictionaryItemMetadata.fromJson(json);
}

/// @nodoc
mixin _$DictionaryItemMetadata {
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this DictionaryItemMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryItemMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryItemMetadataCopyWith<DictionaryItemMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryItemMetadataCopyWith<$Res> {
  factory $DictionaryItemMetadataCopyWith(DictionaryItemMetadata value,
          $Res Function(DictionaryItemMetadata) then) =
      _$DictionaryItemMetadataCopyWithImpl<$Res, DictionaryItemMetadata>;
  @useResult
  $Res call({@JsonKey(name: 'user_id') int? userId, String? timestamp});
}

/// @nodoc
class _$DictionaryItemMetadataCopyWithImpl<$Res,
        $Val extends DictionaryItemMetadata>
    implements $DictionaryItemMetadataCopyWith<$Res> {
  _$DictionaryItemMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryItemMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryItemMetadataImplCopyWith<$Res>
    implements $DictionaryItemMetadataCopyWith<$Res> {
  factory _$$DictionaryItemMetadataImplCopyWith(
          _$DictionaryItemMetadataImpl value,
          $Res Function(_$DictionaryItemMetadataImpl) then) =
      __$$DictionaryItemMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_id') int? userId, String? timestamp});
}

/// @nodoc
class __$$DictionaryItemMetadataImplCopyWithImpl<$Res>
    extends _$DictionaryItemMetadataCopyWithImpl<$Res,
        _$DictionaryItemMetadataImpl>
    implements _$$DictionaryItemMetadataImplCopyWith<$Res> {
  __$$DictionaryItemMetadataImplCopyWithImpl(
      _$DictionaryItemMetadataImpl _value,
      $Res Function(_$DictionaryItemMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryItemMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$DictionaryItemMetadataImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryItemMetadataImpl implements _DictionaryItemMetadata {
  const _$DictionaryItemMetadataImpl(
      {@JsonKey(name: 'user_id') this.userId, this.timestamp});

  factory _$DictionaryItemMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryItemMetadataImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'DictionaryItemMetadata(userId: $userId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryItemMetadataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, timestamp);

  /// Create a copy of DictionaryItemMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryItemMetadataImplCopyWith<_$DictionaryItemMetadataImpl>
      get copyWith => __$$DictionaryItemMetadataImplCopyWithImpl<
          _$DictionaryItemMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryItemMetadataImplToJson(
      this,
    );
  }
}

abstract class _DictionaryItemMetadata implements DictionaryItemMetadata {
  const factory _DictionaryItemMetadata(
      {@JsonKey(name: 'user_id') final int? userId,
      final String? timestamp}) = _$DictionaryItemMetadataImpl;

  factory _DictionaryItemMetadata.fromJson(Map<String, dynamic> json) =
      _$DictionaryItemMetadataImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get timestamp;

  /// Create a copy of DictionaryItemMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryItemMetadataImplCopyWith<_$DictionaryItemMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
