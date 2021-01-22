import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'profile_comment.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfileComment {
  int id;
  int up;
  int down;
  String content;
  DateTime created;
  int itemId;
  String thumb;

  ProfileComment({
    this.id,
    this.up,
    this.down,
    this.content,
    this.created,
    this.itemId,
    this.thumb,
  });

  factory ProfileComment.fromJson(Map<String, dynamic> json) => _$ProfileCommentFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileCommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProfileCommentWrapper {
  List<ProfileComment> comments;
  bool hasOlder;
  bool hasNewer;
  SimpleUser user;

  ProfileCommentWrapper({
    this.comments,
    this.hasNewer,
    this.hasOlder,
    this.user,
  });

  factory ProfileCommentWrapper.fromJson(Map<String, dynamic> json) => _$ProfileCommentWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileCommentWrapperToJson(this);
}
