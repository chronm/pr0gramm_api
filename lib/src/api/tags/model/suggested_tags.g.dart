// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedTags _$SuggestedTagsFromJson(Map<String, dynamic> json) {
  return SuggestedTags(
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$SuggestedTagsToJson(SuggestedTags instance) => <String, dynamic>{
      'tags': instance.tags,
    };
