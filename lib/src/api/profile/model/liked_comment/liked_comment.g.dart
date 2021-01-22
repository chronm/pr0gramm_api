// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikedComment _$LikedCommentFromJson(Map<String, dynamic> json) {
  return LikedComment(
    ccreated: json['ccreated'] == null ? null : DateTime.parse(json['ccreated'] as String),
    created: json['created'] == null ? null : DateTime.parse(json['created'] as String),
    content: json['content'] as String,
    up: json['up'] as int,
    down: json['down'] as int,
    id: json['id'] as int,
    itemId: json['itemId'] as int,
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
    name: json['name'] as String,
    userId: json['userId'] as int,
  )..thumb = json['thumb'] as String;
}

Map<String, dynamic> _$LikedCommentToJson(LikedComment instance) => <String, dynamic>{
      'ccreated': instance.ccreated?.toIso8601String(),
      'created': instance.created?.toIso8601String(),
      'content': instance.content,
      'up': instance.up,
      'down': instance.down,
      'id': instance.id,
      'itemId': instance.itemId,
      'mark': _$UserMarkEnumMap[instance.mark],
      'name': instance.name,
      'thumb': instance.thumb,
      'userId': instance.userId,
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
  UserMark.AltHelfer: 15,
};

LikedCommentWrapper _$LikedCommentWrapperFromJson(Map<String, dynamic> json) {
  return LikedCommentWrapper(
    likesArePublic: json['likesArePublic'] as bool,
    comments: (json['comments'] as List)?.map((e) => e == null ? null : LikedComment.fromJson(e as Map<String, dynamic>))?.toList(),
    hasOlder: json['hasOlder'] as bool,
    hasNewer: json['hasNewer'] as bool,
    user: json['user'] == null ? null : SimpleUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LikedCommentWrapperToJson(LikedCommentWrapper instance) => <String, dynamic>{
      'likesArePublic': instance.likesArePublic,
      'comments': instance.comments?.map((e) => e?.toJson())?.toList(),
      'hasOlder': instance.hasOlder,
      'hasNewer': instance.hasNewer,
      'user': instance.user?.toJson(),
    };
