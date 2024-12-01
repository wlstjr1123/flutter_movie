import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_info.g.dart';

part 'account_info.freezed.dart';

enum Type { GOOGLE, KAKAO }

@freezed
class AccountInfo with _$AccountInfo {
  const factory AccountInfo({
    String? tokenId,
    String? name,
    Type? type,
    String? profileImageUrl,
    String? userId
  }) = _AccountInfo;

  factory AccountInfo.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoFromJson(json);
}
