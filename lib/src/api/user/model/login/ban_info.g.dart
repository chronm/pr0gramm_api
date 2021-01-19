// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BanInfo _$BanInfoFromJson(Map<String, dynamic> json) {
  return BanInfo(
    reason: json['reason'] as String,
    banned: json['banned'] as bool,
    till: json['till'] == null ? null : DateTime.parse(json['till'] as String),
  );
}

Map<String, dynamic> _$BanInfoToJson(BanInfo instance) => <String, dynamic>{
      'reason': instance.reason,
      'banned': instance.banned,
      'till': instance.till?.toIso8601String(),
    };
