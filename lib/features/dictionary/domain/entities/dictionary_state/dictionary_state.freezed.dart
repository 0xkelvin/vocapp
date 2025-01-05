// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DictionaryState _$DictionaryStateFromJson(Map<String, dynamic> json) {
  return _DictionaryState.fromJson(json);
}

/// @nodoc
mixin _$DictionaryState {
  DateTime get focusedDate => throw _privateConstructorUsedError;

  /// Serializes this DictionaryState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryStateCopyWith<DictionaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
          DictionaryState value, $Res Function(DictionaryState) then) =
      _$DictionaryStateCopyWithImpl<$Res, DictionaryState>;
  @useResult
  $Res call({DateTime focusedDate});
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res, $Val extends DictionaryState>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedDate = null,
  }) {
    return _then(_value.copyWith(
      focusedDate: null == focusedDate
          ? _value.focusedDate
          : focusedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionaryStateImplCopyWith<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  factory _$$DictionaryStateImplCopyWith(_$DictionaryStateImpl value,
          $Res Function(_$DictionaryStateImpl) then) =
      __$$DictionaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime focusedDate});
}

/// @nodoc
class __$$DictionaryStateImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryStateImpl>
    implements _$$DictionaryStateImplCopyWith<$Res> {
  __$$DictionaryStateImplCopyWithImpl(
      _$DictionaryStateImpl _value, $Res Function(_$DictionaryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedDate = null,
  }) {
    return _then(_$DictionaryStateImpl(
      focusedDate: null == focusedDate
          ? _value.focusedDate
          : focusedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DictionaryStateImpl implements _DictionaryState {
  const _$DictionaryStateImpl({required this.focusedDate});

  factory _$DictionaryStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictionaryStateImplFromJson(json);

  @override
  final DateTime focusedDate;

  @override
  String toString() {
    return 'DictionaryState(focusedDate: $focusedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryStateImpl &&
            (identical(other.focusedDate, focusedDate) ||
                other.focusedDate == focusedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, focusedDate);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      __$$DictionaryStateImplCopyWithImpl<_$DictionaryStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictionaryStateImplToJson(
      this,
    );
  }
}

abstract class _DictionaryState implements DictionaryState {
  const factory _DictionaryState({required final DateTime focusedDate}) =
      _$DictionaryStateImpl;

  factory _DictionaryState.fromJson(Map<String, dynamic> json) =
      _$DictionaryStateImpl.fromJson;

  @override
  DateTime get focusedDate;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
