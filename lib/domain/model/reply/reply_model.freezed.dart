// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyModel _$ReplyModelFromJson(Map<String, dynamic> json) {
  return _ReplyModel.fromJson(json);
}

/// @nodoc
mixin _$ReplyModel {
  int? get replyId => throw _privateConstructorUsedError;
  String? get movieId => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this ReplyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyModelCopyWith<ReplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyModelCopyWith<$Res> {
  factory $ReplyModelCopyWith(
          ReplyModel value, $Res Function(ReplyModel) then) =
      _$ReplyModelCopyWithImpl<$Res, ReplyModel>;
  @useResult
  $Res call(
      {int? replyId,
      String? movieId,
      double? rating,
      String? title,
      String? content,
      DateTime? date,
      String? userName,
      String? userId});
}

/// @nodoc
class _$ReplyModelCopyWithImpl<$Res, $Val extends ReplyModel>
    implements $ReplyModelCopyWith<$Res> {
  _$ReplyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = freezed,
    Object? movieId = freezed,
    Object? rating = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? date = freezed,
    Object? userName = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyModelImplCopyWith<$Res>
    implements $ReplyModelCopyWith<$Res> {
  factory _$$ReplyModelImplCopyWith(
          _$ReplyModelImpl value, $Res Function(_$ReplyModelImpl) then) =
      __$$ReplyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? replyId,
      String? movieId,
      double? rating,
      String? title,
      String? content,
      DateTime? date,
      String? userName,
      String? userId});
}

/// @nodoc
class __$$ReplyModelImplCopyWithImpl<$Res>
    extends _$ReplyModelCopyWithImpl<$Res, _$ReplyModelImpl>
    implements _$$ReplyModelImplCopyWith<$Res> {
  __$$ReplyModelImplCopyWithImpl(
      _$ReplyModelImpl _value, $Res Function(_$ReplyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = freezed,
    Object? movieId = freezed,
    Object? rating = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? date = freezed,
    Object? userName = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$ReplyModelImpl(
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyModelImpl implements _ReplyModel {
  const _$ReplyModelImpl(
      {this.replyId,
      this.movieId,
      this.rating,
      this.title,
      this.content,
      this.date,
      this.userName,
      this.userId});

  factory _$ReplyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyModelImplFromJson(json);

  @override
  final int? replyId;
  @override
  final String? movieId;
  @override
  final double? rating;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final DateTime? date;
  @override
  final String? userName;
  @override
  final String? userId;

  @override
  String toString() {
    return 'ReplyModel(replyId: $replyId, movieId: $movieId, rating: $rating, title: $title, content: $content, date: $date, userName: $userName, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyModelImpl &&
            (identical(other.replyId, replyId) || other.replyId == replyId) &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, replyId, movieId, rating, title,
      content, date, userName, userId);

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyModelImplCopyWith<_$ReplyModelImpl> get copyWith =>
      __$$ReplyModelImplCopyWithImpl<_$ReplyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyModelImplToJson(
      this,
    );
  }
}

abstract class _ReplyModel implements ReplyModel {
  const factory _ReplyModel(
      {final int? replyId,
      final String? movieId,
      final double? rating,
      final String? title,
      final String? content,
      final DateTime? date,
      final String? userName,
      final String? userId}) = _$ReplyModelImpl;

  factory _ReplyModel.fromJson(Map<String, dynamic> json) =
      _$ReplyModelImpl.fromJson;

  @override
  int? get replyId;
  @override
  String? get movieId;
  @override
  double? get rating;
  @override
  String? get title;
  @override
  String? get content;
  @override
  DateTime? get date;
  @override
  String? get userName;
  @override
  String? get userId;

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyModelImplCopyWith<_$ReplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
