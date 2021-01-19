// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemComment _$ItemCommentFromJson(Map<String, dynamic> json) {
  return ItemComment(
    id: json['id'] as int,
    parent: json['parent'] as int,
    content: json['content'] as String,
    created: json['created'] == null ? null : DateTime.parse(json['created'] as String),
    up: json['up'] as int,
    down: json['down'] as int,
    confidence: (json['confidence'] as num)?.toDouble(),
    name: json['name'] as String,
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
  );
}

Map<String, dynamic> _$ItemCommentToJson(ItemComment instance) => <String, dynamic>{
      'id': instance.id,
      'parent': instance.parent,
      'content': instance.content,
      'created': instance.created?.toIso8601String(),
      'up': instance.up,
      'down': instance.down,
      'confidence': instance.confidence,
      'name': instance.name,
      'mark': _$UserMarkEnumMap[instance.mark],
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
