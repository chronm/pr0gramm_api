// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bookmark _$BookmarkFromJson(Map<String, dynamic> json) {
  return Bookmark(
    link: json['link'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$BookmarkToJson(Bookmark instance) => <String, dynamic>{
      'link': instance.link,
      'name': instance.name,
    };

BookmarkWrapper _$BookmarkWrapperFromJson(Map<String, dynamic> json) {
  return BookmarkWrapper(
    bookmarks: (json['bookmarks'] as List)?.map((e) => e == null ? null : Bookmark.fromJson(e as Map<String, dynamic>))?.toList(),
    collections: (json['collections'] as List)?.map((e) => e == null ? null : BookmarkedCollection.fromJson(e as Map<String, dynamic>))?.toList(),
    trending: (json['trending'] as List)?.map((e) => e == null ? null : Trending.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$BookmarkWrapperToJson(BookmarkWrapper instance) => <String, dynamic>{
      'bookmarks': instance.bookmarks?.map((e) => e?.toJson())?.toList(),
      'collections': instance.collections?.map((e) => e?.toJson())?.toList(),
      'trending': instance.trending?.map((e) => e?.toJson())?.toList(),
    };
