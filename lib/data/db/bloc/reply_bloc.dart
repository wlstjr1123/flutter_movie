import 'package:bloc/bloc.dart';
import 'package:movie_portfolio/data/db/application_database.dart';
import 'package:movie_portfolio/domain/model/reply/reply_model.dart';

class ReplyCubit extends Cubit<ApplicationDatabase> {
  ReplyCubit() : super(ApplicationDatabase());

  Future<int> saveReply({required ReplyModel reply}) async {
    int id = await state.into(state.replyEntity).insert(
        ReplyEntityCompanion.insert(
          movieId: reply.movieId!,
          rating: reply.rating!,
          title: reply.title!,
          content: reply.content!,
          date: reply.date!,
          userName: reply.userName!,
          userId: reply.userId!,
        )
    );

    return id;
  }

  Future<int> deleteReply(ReplyModel reply) async {
    return await (state.delete(state.replyEntity)
      ..where((t) => t.id.equals(reply.replyId!))).go();
  }

  Future<List<ReplyEntityData>> readAll() {
    return state.select(state.replyEntity).get();
  }
}