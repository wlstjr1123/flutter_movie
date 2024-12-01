// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      movieId: json['movieId'] as String?,
      movieName: json['movieName'] as String?,
      characters: (json['characters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      imageUrl: json['imageUrl'] as String?,
      summary: json['summary'] as String?,
      time: json['time'] as String?,
      filmRatings: json['filmRatings'] as String?,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'movieName': instance.movieName,
      'characters': instance.characters,
      'imageUrl': instance.imageUrl,
      'summary': instance.summary,
      'time': instance.time,
      'filmRatings': instance.filmRatings,
    };
