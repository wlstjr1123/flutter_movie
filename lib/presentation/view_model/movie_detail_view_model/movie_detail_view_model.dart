import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_portfolio/data/db/application_database.dart';
import 'package:movie_portfolio/data/db/bloc/reply_bloc.dart';
import 'package:movie_portfolio/domain/model/account_info/account_info.dart';
import 'package:movie_portfolio/domain/model/movie/movie_model.dart';
import 'package:movie_portfolio/domain/model/reply/reply_model.dart';
import 'package:movie_portfolio/domain/use_cases/shard_preferences/shard_preferences_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_detail_view_model.g.dart';
part 'movie_detail_view_model.freezed.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  factory MovieDetailState({
    MovieModel? movieModel,
    @Default([]) List<ReplyModel> replyModel
  }) = _MovieDetailState;
}

@riverpod
class MovieDetailViewModel extends _$MovieDetailViewModel {
  ShardPreferencesUseCase? shardPreferencesUseCase;

  @override
  MovieDetailState build() {
    shardPreferencesUseCase = ref.watch(shardPreferencesUseCaseProvider);
    return MovieDetailState(movieModel: null, replyModel: []);
  }

  Future<AccountInfo?> getAccount() async {
    return await shardPreferencesUseCase?.getAccountInfo();
  }

  Future<bool> saveReply(ReplyModel replyModel, ReplyCubit replyCubit) async {
    int value = await replyCubit.saveReply(reply: replyModel);
    return value > 0 ? true : false;
  }

  void replyReadAll(ReplyCubit replyCubit) async {
    List<ReplyEntityData> dataList = await replyCubit.readAll();
    List<ReplyModel> result = dataList.map((toElement) => ReplyModel.toDomainModel(toElement)).toList();
    state = state.copyWith(replyModel: result);
  }

  void replyDelete(ReplyModel reply ,ReplyCubit replyCubit) async {
    await replyCubit.deleteReply(reply);
    replyReadAll(replyCubit);
  }

}