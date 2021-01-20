// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    likesArePublic: json['likesArePublic'] as bool,
    deviceMail: json['deviceMail'] as bool,
    email: json['email'] as String,
    invites: json['invites'] as int,
    isInvited: json['isInvited'] as bool,
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
    markDefault: _$enumDecodeNullable(_$UserMarkEnumMap, json['markDefault']),
    paidUntil: json['paidUntil'] == null ? null : DateTime.parse(json['paidUntil'] as String),
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'likesArePublic': instance.likesArePublic,
      'deviceMail': instance.deviceMail,
      'email': instance.email,
      'invites': instance.invites,
      'isInvited': instance.isInvited,
      'mark': _$UserMarkEnumMap[instance.mark],
      'markDefault': _$UserMarkEnumMap[instance.markDefault],
      'paidUntil': instance.paidUntil?.toIso8601String(),
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
