// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivateMessage _$PrivateMessageFromJson(Map<String, dynamic> json) {
  return PrivateMessage(
    created: json['created'] == null ? null : DateTime.parse(json['created'] as String),
    id: json['id'] as int,
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
    message: json['message'] as String,
    name: json['name'] as String,
    read: json['read'] == null ? null : ReadStatus.fromJson(json['read'] as int),
    sent: json['sent'] as bool,
  );
}

Map<String, dynamic> _$PrivateMessageToJson(PrivateMessage instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'id': instance.id,
      'mark': _$UserMarkEnumMap[instance.mark],
      'message': instance.message,
      'name': instance.name,
      'read': instance.read?.toJson(),
      'sent': instance.sent,
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
