import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  Account account;
  List<InvitedUser> invited;
  int payments;
  int invitedDetached;

  UserInfo({
    this.account,
    this.invited,
    this.payments,
    this.invitedDetached,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}
