import 'package:json_annotation/json_annotation.dart';

part 'follow.g.dart';

@JsonSerializable()
class Follow {
  bool follows;

  Follow({this.follows});

  factory Follow.fromJson(Map<String, dynamic> json) => _$FollowFromJson(json);
}