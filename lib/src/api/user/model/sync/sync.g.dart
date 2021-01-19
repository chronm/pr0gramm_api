// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sync _$SyncFromJson(Map<String, dynamic> json) {
  return Sync(
    inbox: json['inbox'] == null ? null : Inbox.fromJson(json['inbox'] as Map<String, dynamic>),
    log: json['log'] as String,
    logLength: json['logLength'] as int,
  );
}

Map<String, dynamic> _$SyncToJson(Sync instance) => <String, dynamic>{
      'inbox': instance.inbox,
      'log': instance.log,
      'logLength': instance.logLength,
    };
