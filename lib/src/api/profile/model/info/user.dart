import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String name;
  DateTime registered;
  int score;
  int up;
  int down;
  UserMark mark;
  bool banned;
  int commentDelete;
  int itemDelete;
  bool inactive;

  User({
    this.id,
    this.name,
    this.registered,
    this.score,
    this.up,
    this.down,
    this.mark,
    this.banned,
    this.commentDelete,
    this.itemDelete,
    this.inactive,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}