import 'package:json_annotation/json_annotation.dart';
import 'package:pr0gramm_api/src/util/converters.dart';

part 'badge.g.dart';

@JsonSerializable(explicitToJson: true)
@DateTimeConverter()
class Badge {
  String link;
  String image;
  String description;
  DateTime created;

  Badge({
    this.link,
    this.image,
    this.description,
    this.created,
  });

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);

  Map<String, dynamic> toJson() => _$BadgeToJson(this);
}
