import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.g.dart';
part 'movie_model.freezed.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    String? movieId,
    String? movieName,
    @Default([]) List<String> characters,
    String? imageUrl,
    String? summary,
    String? time,
    String? filmRatings,
}) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

// val movieId: String,
// val movieName: String,
// val characters: List<String>,
// val imageUrl: String,
// val summary: String,
// val time: String,
// val filmRatings: String