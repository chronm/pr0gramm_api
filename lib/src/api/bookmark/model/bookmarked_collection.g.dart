// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarked_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookmarkedCollection _$BookmarkedCollectionFromJson(Map<String, dynamic> json) {
  return BookmarkedCollection(
    id: json['id'] as int,
    isDefault: json['isDefault'] as bool,
    isPublic: json['isPublic'] as bool,
    keyword: json['keyword'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$BookmarkedCollectionToJson(BookmarkedCollection instance) => <String, dynamic>{
      'id': instance.id,
      'isDefault': instance.isDefault,
      'isPublic': instance.isPublic,
      'keyword': instance.keyword,
      'name': instance.name,
    };
