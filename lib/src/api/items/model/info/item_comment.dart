import 'package:json_annotation/json_annotation.dart';
import 'package:pr0gramm_api/src/util/converters.dart';

import '../../../../../pr0gramm_api.dart';

part 'item_comment.g.dart';

@JsonSerializable(explicitToJson: true)
@DateTimeConverter()
class ItemComment {
  int id;
  int parent;
  String content;
  DateTime created;
  int up;
  int down;
  double confidence;
  String name;
  UserMark mark;

  ItemComment({
    this.id,
    this.parent,
    this.content,
    this.created,
    this.up,
    this.down,
    this.confidence,
    this.name,
    this.mark,
  });

  factory ItemComment.fromJson(Map<String, dynamic> json) => _$ItemCommentFromJson(json);

  Map<String, dynamic> toJson() => _$ItemCommentToJson(this);
}
