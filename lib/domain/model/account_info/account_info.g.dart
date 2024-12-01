// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountInfoImpl _$$AccountInfoImplFromJson(Map<String, dynamic> json) =>
    _$AccountInfoImpl(
      tokenId: json['tokenId'] as String?,
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$TypeEnumMap, json['type']),
      profileImageUrl: json['profileImageUrl'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$AccountInfoImplToJson(_$AccountInfoImpl instance) =>
    <String, dynamic>{
      'tokenId': instance.tokenId,
      'name': instance.name,
      'type': _$TypeEnumMap[instance.type],
      'profileImageUrl': instance.profileImageUrl,
      'userId': instance.userId,
    };

const _$TypeEnumMap = {
  Type.GOOGLE: 'GOOGLE',
  Type.KAKAO: 'KAKAO',
};
