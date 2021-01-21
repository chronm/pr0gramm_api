import 'package:json_annotation/json_annotation.dart';

part 'bookmarked_collection.g.dart';

@JsonSerializable()
class BookmarkedCollection {
  int id;
  bool isDefault;
  bool isPublic;
  String keyword;
  String name;

  BookmarkedCollection({
    this.id,
    this.isDefault,
    this.isPublic,
    this.keyword,
    this.name,
  });

  factory BookmarkedCollection.fromJson(Map<String, dynamic> json) => _$BookmarkedCollectionFromJson(json);
}
