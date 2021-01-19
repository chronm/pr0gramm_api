import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'invited_user.g.dart';

@JsonSerializable()
class InvitedUser {
  String name;
  UserMark mark;
  String email;
  DateTime created;

  InvitedUser({
    this.name,
    this.mark,
    this.email,
    this.created,
  });

  factory InvitedUser.fromJson(Map<String, dynamic> json) => _$InvitedUserFromJson(json);
}
