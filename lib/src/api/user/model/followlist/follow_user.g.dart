// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowUser _$FollowUserFromJson(Map<String, dynamic> json) {
  return FollowUser(
    followCreated: const DateTimeConverter().fromJson(json['followCreated'] as int),
    itemId: json['itemId'] as int,
    lastPost: const DateTimeConverter().fromJson(json['lastPost'] as int),
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
    name: json['name'] as String,
    subscribed: const BoolConverter().fromJson(json['subscribed'] as int),
    thumb: json['thumb'] as String,
  );
}

Map<String, dynamic> _$FollowUserToJson(FollowUser instance) => <String, dynamic>{
      'followCreated': const DateTimeConverter().toJson(instance.followCreated),
      'itemId': instance.itemId,
      'lastPost': const DateTimeConverter().toJson(instance.lastPost),
      'mark': _$UserMarkEnumMap[instance.mark],
      'name': instance.name,
      'subscribed': const BoolConverter().toJson(instance.subscribed),
      'thumb': instance.thumb,
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

FollowUserWrapper _$FollowUserWrapperFromJson(Map<String, dynamic> json) {
  return FollowUserWrapper(
    list: (json['list'] as List)?.map((e) => e == null ? null : FollowUser.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$FollowUserWrapperToJson(FollowUserWrapper instance) => <String, dynamic>{
      'list': instance.list?.map((e) => e?.toJson())?.toList(),
    };
