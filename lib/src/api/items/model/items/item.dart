import 'package:json_annotation/json_annotation.dart';
import 'package:pr0gramm_api/src/util/converters.dart';

import '../../../../../pr0gramm_api.dart';

part 'item.g.dart';

@JsonSerializable()
@DateTimeConverter()
class Item {
  int id;
  int promoted;
  int userId;
  int up;
  int down;
  DateTime created;
  String _image;
  String _thumb;
  String _fullsize;
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
    String image,
    String thumb,
    String fullsize,
    this.width,
    this.height,
    this.audio,
    this.source,
    this.flags,
    this.user,
    this.mark,
    this.gift,
  })  : _image = image,
        _thumb = thumb,
        _fullsize = fullsize;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @JsonKey(ignore: true)
  PostType get mediaType {
    if (_image.endsWith('.gif')) return PostType.GIF;
    if (_image.endsWith('.mp4')) return PostType.VIDEO;
    return PostType.IMAGE;
  }

  String get thumb => 'https://thumb.pr0gramm.com/$_thumb';
  String get image => 'https://img.pr0gramm.com/$_image';
  String get fullsize => 'https://full.pr0gramm.com/$_fullsize';
}

@JsonSerializable()
class ItemWrapper {
  bool atEnd;
  bool atStart;
  String error;
  List<Item> items;

  ItemWrapper({
    this.atEnd,
    this.atStart,
    this.error,
    this.items,
  });

  factory ItemWrapper.fromJson(Map<String, dynamic> json) => _$ItemWrapperFromJson(json);
}
