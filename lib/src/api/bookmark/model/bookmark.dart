import 'package:json_annotation/json_annotation.dart';

import '../../../../pr0gramm_api.dart';

part 'bookmark.g.dart';

@JsonSerializable()
class Bookmark {
  String link;
  String name;

  Bookmark({this.link, this.name});

  factory Bookmark.fromJson(Map<String, dynamic> json) => _$BookmarkFromJson(json);
}

@JsonSerializable()
class BookmarkWrapper {
  List<Bookmark> bookmarks;
  List<BookmarkedCollection> collections;
  List<Trending> trending;

  BookmarkWrapper({this.bookmarks, this.collections, this.trending});

  factory BookmarkWrapper.fromJson(Map<String, dynamic> json) => _$BookmarkWrapperFromJson(json);
}
