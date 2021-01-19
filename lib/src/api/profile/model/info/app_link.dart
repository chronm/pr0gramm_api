import 'package:json_annotation/json_annotation.dart';

part 'app_link.g.dart';

@JsonSerializable()
class AppLink {
  String text;
  String icon;
  String link;

  AppLink({
    this.text,
    this.icon,
    this.link,
  });

  factory AppLink.fromJson(Map<String, dynamic> json) => _$AppLinkFromJson(json);
}