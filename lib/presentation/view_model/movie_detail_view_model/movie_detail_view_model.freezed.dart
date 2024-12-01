// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieDetailState {
  MovieModel? get movieModel => throw _privateConstructorUsedError;
  List<ReplyModel> get replyModel => throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res, MovieDetailState>;
  @useResult
  $Res call({MovieModel? movieModel, List<ReplyModel> replyModel});

  $MovieModelCopyWith<$Res>? get movieModel;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res, $Val extends MovieDetailState>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieModel = freezed,
    Object? replyModel = null,
  }) {
    return _then(_value.copyWith(
      movieModel: freezed == movieModel
          ? _value.movieModel
          : movieModel // ignore: cast_nullable_to_non_nullable
              as MovieModel?,
      replyModel: null == replyModel
          ? _value.replyModel
          : replyModel // ignore: cast_nullable_to_non_nullable
              as List<ReplyModel>,
    ) as $Val);
  }

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieModelCopyWith<$Res>? get movieModel {
    if (_value.movieModel == null) {
      return null;
    }

    return $MovieModelCopyWith<$Res>(_value.movieModel!, (value) {
      return _then(_value.copyWith(movieModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailStateImplCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$$MovieDetailStateImplCopyWith(_$MovieDetailStateImpl value,
          $Res Function(_$MovieDetailStateImpl) then) =
      __$$MovieDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MovieModel? movieModel, List<ReplyModel> replyModel});

  @override
  $MovieModelCopyWith<$Res>? get movieModel;
}

/// @nodoc
class __$$MovieDetailStateImplCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$MovieDetailStateImpl>
    implements _$$MovieDetailStateImplCopyWith<$Res> {
  __$$MovieDetailStateImplCopyWithImpl(_$MovieDetailStateImpl _value,
      $Res Function(_$MovieDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieModel = freezed,
    Object? replyModel = null,
  }) {
    return _then(_$MovieDetailStateImpl(
      movieModel: freezed == movieModel
          ? _value.movieModel
          : movieModel // ignore: cast_nullable_to_non_nullable
              as MovieModel?,
      replyModel: null == replyModel
          ? _value._replyModel
          : replyModel // ignore: cast_nullable_to_non_nullable
              as List<ReplyModel>,
    ));
  }
}

/// @nodoc

class _$MovieDetailStateImpl implements _MovieDetailState {
  _$MovieDetailStateImpl(
      {this.movieModel, final List<ReplyModel> replyModel = const []})
      : _replyModel = replyModel;

  @override
  final MovieModel? movieModel;
  final List<ReplyModel> _replyModel;
  @override
  @JsonKey()
  List<ReplyModel> get replyModel {
    if (_replyModel is EqualUnmodifiableListView) return _replyModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replyModel);
  }

  @override
  String toString() {
    return 'MovieDetailState(movieModel: $movieModel, replyModel: $replyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailStateImpl &&
            (identical(other.movieModel, movieModel) ||
                other.movieModel == movieModel) &&
            const DeepCollectionEquality()
                .equals(other._replyModel, _replyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieModel,
      const DeepCollectionEquality().hash(_replyModel));

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailStateImplCopyWith<_$MovieDetailStateImpl> get copyWith =>
      __$$MovieDetailStateImplCopyWithImpl<_$MovieDetailStateImpl>(
          this, _$identity);
}

abstract class _MovieDetailState implements MovieDetailState {
  factory _MovieDetailState(
      {final MovieModel? movieModel,
      final List<ReplyModel> replyModel}) = _$MovieDetailStateImpl;

  @override
  MovieModel? get movieModel;
  @override
  List<ReplyModel> get replyModel;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDetailStateImplCopyWith<_$MovieDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
