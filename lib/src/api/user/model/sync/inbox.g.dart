// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inbox _$InboxFromJson(Map<String, dynamic> json) {
  return Inbox(
    comments: json['comments'] as int,
    mentions: json['mentions'] as int,
    messages: json['messages'] as int,
    notifications: json['notifications'] as int,
    follows: json['follows'] as int,
  );
}

Map<String, dynamic> _$InboxToJson(Inbox instance) => <String, dynamic>{
      'comments': instance.comments,
      'mentions': instance.mentions,
      'messages': instance.messages,
      'notifications': instance.notifications,
      'follows': instance.follows,
    };
