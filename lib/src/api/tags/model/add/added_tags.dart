import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'added_tags.g.dart';

@JsonSerializable()
class AddedTags {
  List<Tag> tags;
  List<String> tagIds;

  AddedTags({
    this.tags,
    this.tagIds,
  });

  factory AddedTags.fromJson(Map<String, dynamic> json) => _$AddedTagsFromJson(json);
}
