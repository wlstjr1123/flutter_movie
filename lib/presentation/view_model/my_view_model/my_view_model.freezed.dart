// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyState {
  AccountInfo? get accountInfo => throw _privateConstructorUsedError;

  /// Create a copy of MyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyStateCopyWith<MyState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStateCopyWith<$Res> {
  factory $MyStateCopyWith(MyState value, $Res Function(MyState) then) =
      _$MyStateCopyWithImpl<$Res, MyState>;
  @useResult
  $Res call({AccountInfo? accountInfo});

  $AccountInfoCopyWith<$Res>? get accountInfo;
}

/// @nodoc
class _$MyStateCopyWithImpl<$Res, $Val extends MyState>
    implements $MyStateCopyWith<$Res> {
  _$MyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountInfo = freezed,
  }) {
    return _then(_value.copyWith(
      accountInfo: freezed == accountInfo
          ? _value.accountInfo
          : accountInfo // ignore: cast_nullable_to_non_nullable
              as AccountInfo?,
    ) as $Val);
  }

  /// Create a copy of MyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountInfoCopyWith<$Res>? get accountInfo {
    if (_value.accountInfo == null) {
      return null;
    }

    return $AccountInfoCopyWith<$Res>(_value.accountInfo!, (value) {
      return _then(_value.copyWith(accountInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyStateImplCopyWith<$Res> implements $MyStateCopyWith<$Res> {
  factory _$$MyStateImplCopyWith(
          _$MyStateImpl value, $Res Function(_$MyStateImpl) then) =
      __$$MyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountInfo? accountInfo});

  @override
  $AccountInfoCopyWith<$Res>? get accountInfo;
}

/// @nodoc
class __$$MyStateImplCopyWithImpl<$Res>
    extends _$MyStateCopyWithImpl<$Res, _$MyStateImpl>
    implements _$$MyStateImplCopyWith<$Res> {
  __$$MyStateImplCopyWithImpl(
      _$MyStateImpl _value, $Res Function(_$MyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountInfo = freezed,
  }) {
    return _then(_$MyStateImpl(
      accountInfo: freezed == accountInfo
          ? _value.accountInfo
          : accountInfo // ignore: cast_nullable_to_non_nullable
              as AccountInfo?,
    ));
  }
}

/// @nodoc

class _$MyStateImpl implements _MyState {
  _$MyStateImpl({this.accountInfo});

  @override
  final AccountInfo? accountInfo;

  @override
  String toString() {
    return 'MyState(accountInfo: $accountInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStateImpl &&
            (identical(other.accountInfo, accountInfo) ||
                other.accountInfo == accountInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountInfo);

  /// Create a copy of MyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStateImplCopyWith<_$MyStateImpl> get copyWith =>
      __$$MyStateImplCopyWithImpl<_$MyStateImpl>(this, _$identity);
}

abstract class _MyState implements MyState {
  factory _MyState({final AccountInfo? accountInfo}) = _$MyStateImpl;

  @override
  AccountInfo? get accountInfo;

  /// Create a copy of MyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyStateImplCopyWith<_$MyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
