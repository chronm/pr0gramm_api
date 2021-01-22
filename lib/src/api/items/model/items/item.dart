import 'package:json_annotation/json_annotation.dart';
import 'package:pr0gramm_api/src/util/converters.dart';

import '../../../../../pr0gramm_api.dart';

part 'item.g.dart';

@JsonSerializable(explicitToJson: true)
@DateTimeConverter()
class Item {
  final int id;
  final int promoted;
  final int userId;
  final int up;
  final int down;
  final DateTime created;
  @JsonKey(name: 'image')
  final String rawImage;
  @JsonKey(name: 'thumb')
  final String rawThumb;
  @JsonKey(name: 'fullsize')
  final String rawFullsize;
  final int width;
  final int height;
  final bool audio;
  final String source;
  final ItemFlags flags;
  final String user;
  final UserMark mark;
  final int gift;

  Item({
    this.id,
    this.promoted,
    this.userId,
    this.up,
    this.down,
    this.created,
    this.rawImage,
    this.rawThumb,
    this.rawFullsize,
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

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @JsonKey(ignore: true)
  PostType get mediaType {
    if (image.endsWith('.gif')) return PostType.GIF;
    if (image.endsWith('.mp4')) return PostType.VIDEO;
    return PostType.IMAGE;
  }

  @JsonKey(ignore: true)
  String get thumb => 'https://thumb.pr0gramm.com/$rawThumb';
  @JsonKey(ignore: true)
  String get image => 'https://img.pr0gramm.com/$rawImage';
  @JsonKey(ignore: true)
  String get fullsize => 'https://full.pr0gramm.com/$rawFullsize';
}

@JsonSerializable(explicitToJson: true)
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

  Map<String, dynamic> toJson() => _$ItemWrapperToJson(this);
}
