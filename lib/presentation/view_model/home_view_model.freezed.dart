// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  List<BannerModel> get bannerList => throw _privateConstructorUsedError;
  List<MovieModel> get movieList => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<BannerModel> bannerList, List<MovieModel> movieList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerList = null,
    Object? movieList = null,
  }) {
    return _then(_value.copyWith(
      bannerList: null == bannerList
          ? _value.bannerList
          : bannerList // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      movieList: null == movieList
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BannerModel> bannerList, List<MovieModel> movieList});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerList = null,
    Object? movieList = null,
  }) {
    return _then(_$HomeStateImpl(
      bannerList: null == bannerList
          ? _value._bannerList
          : bannerList // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      movieList: null == movieList
          ? _value._movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {final List<BannerModel> bannerList = const [],
      final List<MovieModel> movieList = const []})
      : _bannerList = bannerList,
        _movieList = movieList;

  final List<BannerModel> _bannerList;
  @override
  @JsonKey()
  List<BannerModel> get bannerList {
    if (_bannerList is EqualUnmodifiableListView) return _bannerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bannerList);
  }

  final List<MovieModel> _movieList;
  @override
  @JsonKey()
  List<MovieModel> get movieList {
    if (_movieList is EqualUnmodifiableListView) return _movieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieList);
  }

  @override
  String toString() {
    return 'HomeState(bannerList: $bannerList, movieList: $movieList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._bannerList, _bannerList) &&
            const DeepCollectionEquality()
                .equals(other._movieList, _movieList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bannerList),
      const DeepCollectionEquality().hash(_movieList));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final List<BannerModel> bannerList,
      final List<MovieModel> movieList}) = _$HomeStateImpl;

  @override
  List<BannerModel> get bannerList;
  @override
  List<MovieModel> get movieList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
