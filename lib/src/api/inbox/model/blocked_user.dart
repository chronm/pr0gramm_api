import 'package:json_annotation/json_annotation.dart';
import 'package:pr0gramm_api/pr0gramm_api.dart';

part 'blocked_user.g.dart';

@JsonSerializable()
class BlockedUser {
  UserMark mark;
  String name;

  BlockedUser({
    this.mark,
    this.name,
  });

  factory BlockedUser.fromJson(Map<String, dynamic> json) => _$BlockedUserFromJson(json);
}

@JsonSerializable()
class BlockedUserWrapper {
  List<BlockedUser> blockedUsers;

  BlockedUserWrapper({this.blockedUsers});

  factory BlockedUserWrapper.fromJson(Map<String, dynamic> json) => _$BlockedUserWrapperFromJson(json);
}
