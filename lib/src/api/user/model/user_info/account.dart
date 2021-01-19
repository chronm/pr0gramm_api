import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  bool likesArePublic;
  bool deviceMail;
  String email;
  int invites;
  bool isInvited;
  UserMark mark;
  UserMark markDefault;
  DateTime paidUntil;

  Account({
    this.likesArePublic,
    this.deviceMail,
    this.email,
    this.invites,
    this.isInvited,
    this.mark,
    this.markDefault,
    this.paidUntil,
  });

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}
