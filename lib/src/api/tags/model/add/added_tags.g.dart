// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'added_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddedTags _$AddedTagsFromJson(Map<String, dynamic> json) {
  return AddedTags(
    tags: (json['tags'] as List)?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))?.toList(),
    tagIds: (json['tagIds'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$AddedTagsToJson(AddedTags instance) => <String, dynamic>{
      'tags': instance.tags?.map((e) => e?.toJson())?.toList(),
      'tagIds': instance.tagIds,
    };
