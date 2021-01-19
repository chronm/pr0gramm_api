// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionItem _$CollectionItemFromJson(Map<String, dynamic> json) {
  return CollectionItem(
    id: json['id'] as int,
    thumb: json['thumb'] as String,
    flags: json['flags'] == null ? null : ItemFlags.fromJson(json['flags'] as int),
  );
}

Map<String, dynamic> _$CollectionItemToJson(CollectionItem instance) => <String, dynamic>{
      'id': instance.id,
      'thumb': instance.thumb,
      'flags': instance.flags,
    };

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return Collection(
    id: json['id'] as int,
    isDefault: json['isDefault'] as bool,
    isPublic: json['isPublic'] as bool,
    items: (json['items'] as List)?.map((e) => e == null ? null : CollectionItem.fromJson(e as Map<String, dynamic>))?.toList(),
    keyword: json['keyword'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$CollectionToJson(Collection instance) => <String, dynamic>{
      'id': instance.id,
      'isDefault': instance.isDefault,
      'isPublic': instance.isPublic,
      'items': instance.items,
      'keyword': instance.keyword,
      'name': instance.name,
    };
