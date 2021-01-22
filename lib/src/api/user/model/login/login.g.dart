// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) {
  return Login(
    error: json['error'] as String,
    success: json['success'] as bool,
    identifier: json['identifier'] as String,
    ban: json['ban'] == null ? null : BanInfo.fromJson(json['ban'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'error': instance.error,
      'success': instance.success,
      'identifier': instance.identifier,
      'ban': instance.ban?.toJson(),
    };
