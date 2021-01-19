// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocked_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockedUser _$BlockedUserFromJson(Map<String, dynamic> json) {
  return BlockedUser(
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$BlockedUserToJson(BlockedUser instance) => <String, dynamic>{
      'mark': _$UserMarkEnumMap[instance.mark],
      'name': instance.name,
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

BlockedUserWrapper _$BlockedUserWrapperFromJson(Map<String, dynamic> json) {
  return BlockedUserWrapper(
    blockedUsers: (json['blockedUsers'] as List)?.map((e) => e == null ? null : BlockedUser.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$BlockedUserWrapperToJson(BlockedUserWrapper instance) => <String, dynamic>{
      'blockedUsers': instance.blockedUsers,
    };
