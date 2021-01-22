import 'package:json_annotation/json_annotation.dart';

import '../../../../../pr0gramm_api.dart';

part 'profile.g.dart';

@JsonSerializable(explicitToJson: true)
class Profile {
  List<AppLink> appLinks;
  List<Badge> badges;
  bool blocked;
  int collectedCount;
  List<BookmarkedCollection> collections;
  int commentCount;
  List<ProfileComment> comments;
  @JsonKey(name: 'comments_likes')
  List<LikedComment> commentsLikes;
  int commentsLikesCount;
  int followCount;
  bool following;
  int likeCount;
  bool likesArePublic;
  int uploadCount;
  List<Upload> uploads;
  User user;
  bool subscribed;
  int tagCount;

  Profile({
    this.appLinks,
    this.badges,
    this.blocked,
    this.collectedCount,
    this.collections,
    this.commentCount,
    this.comments,
    this.commentsLikes,
    this.commentsLikesCount,
    this.followCount,
    this.following,
    this.likeCount,
    this.likesArePublic,
    this.subscribed,
    this.tagCount,
    this.uploadCount,
    this.uploads,
    this.user,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
