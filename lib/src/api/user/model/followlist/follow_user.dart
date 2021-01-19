import 'package:json_annotation/json_annotation.dart';
import 'package:pr0gramm_api/src/util/converters.dart';

import '../../../../../pr0gramm_api.dart';

part 'follow_user.g.dart';

@JsonSerializable()
@DateTimeConverter()
@BoolConverter()
class FollowUser {
  DateTime followCreated;
  int itemId;
  DateTime lastPost;
  UserMark mark;
  String name;
  bool subscribed;
  String thumb;

  FollowUser(
      {this.followCreated,
      this.itemId,
      this.lastPost,
      this.mark,
      this.name,
      this.subscribed,
      this.thumb});

  factory FollowUser.fromJson(Map<String, dynamic> json) => _$FollowUserFromJson(json);
}

@JsonSerializable()
class FollowUserWrapper {
  List<FollowUser> list;

  FollowUserWrapper({this.list});

  factory FollowUserWrapper.fromJson(Map<String, dynamic> json) => _$FollowUserWrapperFromJson(json);
}