import 'package:json_annotation/json_annotation.dart';
import 'package:pr0gramm_api/pr0gramm_api.dart';

part 'blocked_user.g.dart';

@JsonSerializable(explicitToJson: true)
class BlockedUser {
  UserMark mark;
  String name;

  BlockedUser({
    this.mark,
    this.name,
  });

  factory BlockedUser.fromJson(Map<String, dynamic> json) => _$BlockedUserFromJson(json);

  Map<String, dynamic> toJson() => _$BlockedUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BlockedUserWrapper {
  List<BlockedUser> blockedUsers;

  BlockedUserWrapper({this.blockedUsers});

  factory BlockedUserWrapper.fromJson(Map<String, dynamic> json) => _$BlockedUserWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$BlockedUserWrapperToJson(this);
}
