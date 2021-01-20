// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return Conversation(
    blocked: json['blocked'] as bool,
    lastMessage: json['lastMessage'] == null ? null : DateTime.parse(json['lastMessage'] as String),
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
    name: json['name'] as String,
    unreadCount: json['unreadCount'] as int,
  );
}

Map<String, dynamic> _$ConversationToJson(Conversation instance) => <String, dynamic>{
      'blocked': instance.blocked,
      'lastMessage': instance.lastMessage?.toIso8601String(),
      'mark': _$UserMarkEnumMap[instance.mark],
      'name': instance.name,
      'unreadCount': instance.unreadCount,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries.singleWhere((e) => e.value == source, orElse: () => null)?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$UserMarkEnumMap = {
  UserMark.Schwuchtel: 0,
  UserMark.Neuschwuchtel: 1,
  UserMark.Altschwuchtel: 2,
  UserMark.Administrator: 3,
  UserMark.Gebannt: 4,
  UserMark.Moderator: 5,
  UserMark.Fliesentisch: 6,
  UserMark.LebendeLegende: 7,
  UserMark.Wichtel: 8,
  UserMark.EdlerSpender: 9,
  UserMark.Mittelaltschwuchtel: 10,
  UserMark.AltModerator: 11,
  UserMark.Communityhelfer: 12,
  UserMark.SystemBot: 13,
  UserMark.NutzerBot: 14,
};

ConversationWrapper _$ConversationWrapperFromJson(Map<String, dynamic> json) {
  return ConversationWrapper(
    atEnd: json['atEnd'] as bool,
    conversations: (json['conversations'] as List)?.map((e) => e == null ? null : Conversation.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$ConversationWrapperToJson(ConversationWrapper instance) => <String, dynamic>{
      'atEnd': instance.atEnd,
      'conversations': instance.conversations,
    };
