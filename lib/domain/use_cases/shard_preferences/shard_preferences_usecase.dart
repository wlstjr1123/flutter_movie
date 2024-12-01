import 'package:movie_portfolio/data/repository_impl/shard_preferences/shard_preferences_repository_impl.dart';
import 'package:movie_portfolio/domain/model/account_info/account_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shard_preferences_usecase.g.dart';

class ShardPreferencesUseCase {
  ShardPreferencesImpl shardPreferencesImpl;

  ShardPreferencesUseCase(this.shardPreferencesImpl);

  Future<AccountInfo?> getAccountInfo() async {
    return await shardPreferencesImpl.getAccountInfo();
  }

  signIn(AccountInfo accountInfo) {
    shardPreferencesImpl.signIn(accountInfo);
  }

  signOut() {
    shardPreferencesImpl.signOut();
  }
}

@riverpod
ShardPreferencesUseCase shardPreferencesUseCase(ShardPreferencesUseCaseRef ref) {
  final repository = ref.watch(shardPreferencesRepositoryProvider);
  return ShardPreferencesUseCase(repository);
}