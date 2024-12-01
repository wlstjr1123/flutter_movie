import 'dart:convert';

import 'package:movie_portfolio/domain/model/account_info/account_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shard_preferences.g.dart';

class PreferenceDataSource {
  static String ACCOUNT_INFO = "account_info";

  static SharedPreferences? prefs;

  Future<SharedPreferences?> getPreferences() async {
    if (prefs != null) {
      return prefs;
    }

    prefs = await SharedPreferences.getInstance();

    return prefs;
  }

  bool putAccountInfo(AccountInfo info) {
    if (prefs != null) {
      prefs?.setString(ACCOUNT_INFO, json.encode(info));
      return true;
    } else {
      return false;
    }
  }
  
  AccountInfo? getAccountInfo() {
    String? result = prefs?.getString(ACCOUNT_INFO);
    try {
      dynamic jsonData = json.decode(result ?? "");
      if (jsonData == "") {
        return null;
      } else {
        return AccountInfo.fromJson(jsonData);
      }
    } catch (e) {
      return null;
    }
  }

  removeAccountInfo() {
    prefs?.setString(ACCOUNT_INFO, "");
  }

}

@riverpod
PreferenceDataSource preferenceService(PreferenceServiceRef ref) {
  return PreferenceDataSource();
}