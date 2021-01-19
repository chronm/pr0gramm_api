import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'liked_comment.g.dart';

@JsonSerializable()
class LikedComment {
  DateTime ccreated;
  DateTime created;
  String content;
  int up;
  int down;
  int id;
  int itemId;
  UserMark mark;
  String name;
  String thumb;
  int userId;

  LikedComment({
    this.ccreated,
    this.created,
    this.content,
    this.up,
    this.down,
    this.id,
    this.itemId,
    this.mark,
    this.name,
    this.userId,
  });

  factory LikedComment.fromJson(Map<String, dynamic> json) => _$LikedCommentFromJson(json);
}

@JsonSerializable()
class LikedCommentWrapper {
  bool likesArePublic;
  List<LikedComment> comments;
  bool hasOlder;
  bool hasNewer;
  SimpleUser user;

  LikedCommentWrapper({this.likesArePublic, this.comments, this.hasOlder, this.hasNewer, this.user,});

  factory LikedCommentWrapper.fromJson(Map<String, dynamic> json) => _$LikedCommentWrapperFromJson(json);
}
