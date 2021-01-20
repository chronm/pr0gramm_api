// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invited_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvitedUser _$InvitedUserFromJson(Map<String, dynamic> json) {
  return InvitedUser(
    name: json['name'] as String,
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
    email: json['email'] as String,
    created: json['created'] == null ? null : DateTime.parse(json['created'] as String),
  );
}

Map<String, dynamic> _$InvitedUserToJson(InvitedUser instance) => <String, dynamic>{
      'name': instance.name,
      'mark': _$UserMarkEnumMap[instance.mark],
      'email': instance.email,
      'created': instance.created?.toIso8601String(),
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
