// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_with.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageWith _$MessageWithFromJson(Map<String, dynamic> json) {
  return MessageWith(
    atEnd: json['atEnd'] as bool,
    messages: (json['messages'] as List)?.map((e) => e == null ? null : PrivateMessage.fromJson(e as Map<String, dynamic>))?.toList(),
    user: json['with'] == null ? null : SimpleUser.fromJson(json['with'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageWithToJson(MessageWith instance) => <String, dynamic>{
      'atEnd': instance.atEnd,
      'messages': instance.messages,
      'with': instance.user,
    };
