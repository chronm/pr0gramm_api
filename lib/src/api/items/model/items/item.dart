import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  int id;
  int promoted;
  int userId;
  int up;
  int down;
  DateTime created;
  String image;
  String thumb;
  String fullsize;
  int width;
  int height;
  bool audio;
  String source;
  ItemFlags flags;
  String user;
  UserMark mark;
  int gift;

  Item({
    this.id,
    this.promoted,
    this.userId,
    this.up,
    this.down,
    this.created,
    this.image,
    this.thumb,
    this.fullsize,
    this.width,
    this.height,
    this.audio,
    this.source,
    this.flags,
    this.user,
    this.mark,
    this.gift,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  @JsonKey(ignore: true)
  PostType get mediaType {
    if (image.endsWith('.gif')) return PostType.GIF;
    if (image.endsWith('.mp4')) return PostType.VIDEO;
    return PostType.IMAGE;
  }
}

@JsonSerializable()
class ItemWrapper {
  bool atEnd;
  bool atStart;
  String error;
  List<Item> items;

  ItemWrapper({
    this.atEnd, this.atStart, this.error, this.items,
  });

  factory ItemWrapper.fromJson(Map<String, dynamic> json) => _$ItemWrapperFromJson(json);
}
