import 'package:json_annotation/json_annotation.dart';

part 'trending.g.dart';

@JsonSerializable(explicitToJson: true)
class Trending {
  String link;
  String name;
  String search;
  double velocity;

  Trending({
    this.link,
    this.name,
    this.search,
    this.velocity,
  });

  factory Trending.fromJson(Map<String, dynamic> json) => _$TrendingFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingToJson(this);
}
