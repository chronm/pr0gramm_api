// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    id: json['id'] as int,
    promoted: json['promoted'] as int,
    userId: json['userId'] as int,
    up: json['up'] as int,
    down: json['down'] as int,
    created: const DateTimeConverter().fromJson(json['created'] as int),
    image: json['image'] as String,
    thumb: json['thumb'] as String,
    fullsize: json['fullsize'] as String,
    width: json['width'] as int,
    height: json['height'] as int,
    audio: json['audio'] as bool,
    source: json['source'] as String,
    flags: json['flags'] == null ? null : ItemFlags.fromJson(json['flags'] as int),
    user: json['user'] as String,
    mark: _$enumDecodeNullable(_$UserMarkEnumMap, json['mark']),
    gift: json['gift'] as int,
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'promoted': instance.promoted,
      'userId': instance.userId,
      'up': instance.up,
      'down': instance.down,
      'created': const DateTimeConverter().toJson(instance.created),
      'image': instance.image,
      'thumb': instance.thumb,
      'fullsize': instance.fullsize,
      'width': instance.width,
      'height': instance.height,
      'audio': instance.audio,
      'source': instance.source,
      'flags': instance.flags,
      'user': instance.user,
      'mark': _$UserMarkEnumMap[instance.mark],
      'gift': instance.gift,
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

ItemWrapper _$ItemWrapperFromJson(Map<String, dynamic> json) {
  return ItemWrapper(
    atEnd: json['atEnd'] as bool,
    atStart: json['atStart'] as bool,
    error: json['error'] as String,
    items: (json['items'] as List)?.map((e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$ItemWrapperToJson(ItemWrapper instance) => <String, dynamic>{
      'atEnd': instance.atEnd,
      'atStart': instance.atStart,
      'error': instance.error,
      'items': instance.items,
    };
