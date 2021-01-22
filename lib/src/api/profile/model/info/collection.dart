import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'collection.g.dart';

@JsonSerializable(explicitToJson: true)
class CollectionItem {
  int id;
  String thumb;
  ItemFlags flags;

  CollectionItem({
    this.id,
    this.thumb,
    this.flags,
  });

  factory CollectionItem.fromJson(Map<String, dynamic> json) => _$CollectionItemFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Collection {
  int id;
  bool isDefault;
  bool isPublic;
  List<CollectionItem> items;
  String keyword;
  String name;

  Collection({
    this.id,
    this.isDefault,
    this.isPublic,
    this.items,
    this.keyword,
    this.name,
  });

  factory Collection.fromJson(Map<String, dynamic> json) => _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}
