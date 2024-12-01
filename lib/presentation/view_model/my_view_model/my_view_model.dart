import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_portfolio/domain/model/account_info/account_info.dart';
import 'package:movie_portfolio/domain/use_cases/shard_preferences/shard_preferences_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_view_model.g.dart';

part 'my_view_model.freezed.dart';

@freezed
class MyState with _$MyState {
  factory MyState({
    AccountInfo? accountInfo,
  }) = _MyState;
}

@riverpod
class MyViewModel extends _$MyViewModel {
  ShardPreferencesUseCase? shardPreferencesUseCase;

  @override
  MyState build() {
    shardPreferencesUseCase = ref.watch(shardPreferencesUseCaseProvider);
    return MyState(accountInfo: null);
  }

  updateAccountInfo(AccountInfo? accountInfo) async {
    if (accountInfo == null) {
      final data = await ref.watch(shardPreferencesUseCaseProvider).getAccountInfo();
      state = state.copyWith(
          accountInfo: data
      );
    } else {
      state = state.copyWith(
          accountInfo: accountInfo
      );
    }

  }

  Future<AccountInfo?> getAccount() async {
    return await shardPreferencesUseCase?.getAccountInfo();
  }

  signIn(AccountInfo accountInfo) {
    shardPreferencesUseCase?.signIn(accountInfo);
  }

  signOut() {
    shardPreferencesUseCase?.signOut();
  }

}