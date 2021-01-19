// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    blocked: json['blocked'] as bool,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    flags:
        json['flags'] == null ? null : ItemFlags.fromJson(json['flags'] as int),
    id: json['id'] as int,
    image: json['image'] as String,
    itemId: json['itemId'] as int,
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
    message: json['message'] as String,
    name: json['name'] as String,
    read: json['read'] as bool,
    score: json['score'] as int,
    senderId: json['senderId'] as int,
    thumb: json['thumb'] as String,
    type: json['type'] == null
        ? null
        : MessageType.fromJson(json['type'] as String),
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'blocked': instance.blocked,
      'created': instance.created?.toIso8601String(),
      'flags': instance.flags,
      'id': instance.id,
      'image': instance.image,
      'itemId': instance.itemId,
      'mark': _$UserMarkEnumMap[instance.mark],
      'message': instance.message,
      'name': instance.name,
      'read': instance.read,
      'score': instance.score,
      'senderId': instance.senderId,
      'thumb': instance.thumb,
      'type': instance.type,
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

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

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
  UserMark.Schwuchtel: 'Schwuchtel',
  UserMark.Neuschwuchtel: 'Neuschwuchtel',
  UserMark.Altschwuchtel: 'Altschwuchtel',
  UserMark.Administrator: 'Administrator',
  UserMark.Gebannt: 'Gebannt',
  UserMark.Moderator: 'Moderator',
  UserMark.Fliesentisch: 'Fliesentisch',
  UserMark.LebendeLegende: 'LebendeLegende',
  UserMark.Wichtel: 'Wichtel',
  UserMark.EdlerSpender: 'EdlerSpender',
  UserMark.Mittelaltschwuchtel: 'Mittelaltschwuchtel',
  UserMark.AltModerator: 'AltModerator',
  UserMark.Communityhelfer: 'Communityhelfer',
  UserMark.SystemBot: 'SystemBot',
  UserMark.NutzerBot: 'NutzerBot',
};

MessageWrapper _$MessageWrapperFromJson(Map<String, dynamic> json) {
  return MessageWrapper(
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : Message.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MessageWrapperToJson(MessageWrapper instance) =>
    <String, dynamic>{
      'messages': instance.messages,
    };
