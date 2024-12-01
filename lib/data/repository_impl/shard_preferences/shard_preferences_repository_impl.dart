import 'package:movie_portfolio/data/datasource/shard_preferences/shard_preferences.dart';
import 'package:movie_portfolio/domain/model/account_info/account_info.dart';
import 'package:movie_portfolio/domain/repository/shard_preferences_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shard_preferences_repository_impl.g.dart';

class ShardPreferencesImpl extends ShardPreferencesRepository {
  PreferenceDataSource preferenceDataSource;

  ShardPreferencesImpl(this.preferenceDataSource);

  @override
  Future<AccountInfo?> getAccountInfo() async {
    await preferenceDataSource.getPreferences();
    return preferenceDataSource.getAccountInfo();
  }

  @override
  signIn(AccountInfo accountInfo) async {
    await preferenceDataSource.getPreferences();
    preferenceDataSource.putAccountInfo(accountInfo);
  }

  @override
  signOut() async {
    await preferenceDataSource.getPreferences();
    preferenceDataSource.removeAccountInfo();
  }

}

@riverpod
ShardPreferencesImpl shardPreferencesRepository(ShardPreferencesRepositoryRef ref) {
  final service = ref.watch(preferenceServiceProvider);
  return ShardPreferencesImpl(service);
}