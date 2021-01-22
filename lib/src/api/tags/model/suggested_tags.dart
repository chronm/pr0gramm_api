import 'package:json_annotation/json_annotation.dart';

part 'suggested_tags.g.dart';

@JsonSerializable(explicitToJson: true)
class SuggestedTags {
  List<String> tags;

  SuggestedTags({this.tags});

  factory SuggestedTags.fromJson(Map<String, dynamic> json) => _$SuggestedTagsFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestedTagsToJson(this);
}
