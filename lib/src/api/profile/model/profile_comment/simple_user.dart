import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'simple_user.g.dart';

@JsonSerializable()
class SimpleUser {
  @JsonKey(nullable: true)
  int id;
  String name;
  UserMark mark;
  @JsonKey(nullable: true)
  bool blocked;

  SimpleUser({
    this.id,
    this.name,
    this.mark,
    this.blocked,
  });

  factory SimpleUser.fromJson(Map<String, dynamic> json) => _$SimpleUserFromJson(json);
}
