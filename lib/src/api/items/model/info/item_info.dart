import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'item_info.g.dart';

@JsonSerializable()
class ItemInfo {
  List<Tag> tags;
  List<ItemComment> comments;

  ItemInfo({
    this.tags,
    this.comments,
  });

  factory ItemInfo.fromJson(Map<String, dynamic> json) => _$ItemInfoFromJson(json);
}
