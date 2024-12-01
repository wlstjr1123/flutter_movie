import 'package:movie_portfolio/domain/model/account_info/account_info.dart';

abstract class ShardPreferencesRepository {
  Future<AccountInfo?> getAccountInfo();

  signIn(AccountInfo accountInfo);

  signOut();
}