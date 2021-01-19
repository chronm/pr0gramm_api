import 'package:json_annotation/json_annotation.dart';

part 'tag.g.dart';

@JsonSerializable()
class Tag {
  int id;
  double confidence;
  String tag;

  Tag({
    this.id,
    this.confidence,
    this.tag,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
