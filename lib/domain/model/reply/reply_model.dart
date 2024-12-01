import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_portfolio/data/db/application_database.dart';

part 'reply_model.g.dart';
part 'reply_model.freezed.dart';

@freezed
class ReplyModel with _$ReplyModel {
  const factory ReplyModel({
    int? replyId,
    String? movieId,
    double? rating,
    String? title,
    String? content,
    DateTime? date,
    String? userName,
    String? userId,
}) = _ReplyModel;

  factory ReplyModel.fromJson(Map<String, dynamic> json) =>
      _$ReplyModelFromJson(json);

  factory ReplyModel.toDomainModel(ReplyEntityData data) {
    return ReplyModel(
      replyId: data.id,
      movieId: data.movieId,
      rating: data.rating,
      title: data.title,
      content: data.content,
      date: data.date,
      userName: data.userName,
      userId: data.userId,
    );
  }
}