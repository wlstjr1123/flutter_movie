// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyModelImpl _$$ReplyModelImplFromJson(Map<String, dynamic> json) =>
    _$ReplyModelImpl(
      replyId: (json['replyId'] as num?)?.toInt(),
      movieId: json['movieId'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      title: json['title'] as String?,
      content: json['content'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      userName: json['userName'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$ReplyModelImplToJson(_$ReplyModelImpl instance) =>
    <String, dynamic>{
      'replyId': instance.replyId,
      'movieId': instance.movieId,
      'rating': instance.rating,
      'title': instance.title,
      'content': instance.content,
      'date': instance.date?.toIso8601String(),
      'userName': instance.userName,
      'userId': instance.userId,
    };
