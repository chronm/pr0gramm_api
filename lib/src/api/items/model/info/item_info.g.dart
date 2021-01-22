// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemInfo _$ItemInfoFromJson(Map<String, dynamic> json) {
  return ItemInfo(
    tags: (json['tags'] as List)?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))?.toList(),
    comments: (json['comments'] as List)?.map((e) => e == null ? null : ItemComment.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$ItemInfoToJson(ItemInfo instance) => <String, dynamic>{
      'tags': instance.tags?.map((e) => e?.toJson())?.toList(),
      'comments': instance.comments?.map((e) => e?.toJson())?.toList(),
    };
