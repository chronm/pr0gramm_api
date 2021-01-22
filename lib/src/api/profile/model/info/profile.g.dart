// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    appLinks: (json['appLinks'] as List)?.map((e) => e == null ? null : AppLink.fromJson(e as Map<String, dynamic>))?.toList(),
    badges: (json['badges'] as List)?.map((e) => e == null ? null : Badge.fromJson(e as Map<String, dynamic>))?.toList(),
    blocked: json['blocked'] as bool,
    collectedCount: json['collectedCount'] as int,
    collections: (json['collections'] as List)?.map((e) => e == null ? null : BookmarkedCollection.fromJson(e as Map<String, dynamic>))?.toList(),
    commentCount: json['commentCount'] as int,
    comments: (json['comments'] as List)?.map((e) => e == null ? null : ProfileComment.fromJson(e as Map<String, dynamic>))?.toList(),
    commentsLikes: (json['comments_likes'] as List)?.map((e) => e == null ? null : LikedComment.fromJson(e as Map<String, dynamic>))?.toList(),
    commentsLikesCount: json['commentsLikesCount'] as int,
    followCount: json['followCount'] as int,
    following: json['following'] as bool,
    likeCount: json['likeCount'] as int,
    likesArePublic: json['likesArePublic'] as bool,
    subscribed: json['subscribed'] as bool,
    tagCount: json['tagCount'] as int,
    uploadCount: json['uploadCount'] as int,
    uploads: (json['uploads'] as List)?.map((e) => e == null ? null : Upload.fromJson(e as Map<String, dynamic>))?.toList(),
    user: json['user'] == null ? null : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'appLinks': instance.appLinks?.map((e) => e?.toJson())?.toList(),
      'badges': instance.badges?.map((e) => e?.toJson())?.toList(),
      'blocked': instance.blocked,
      'collectedCount': instance.collectedCount,
      'collections': instance.collections?.map((e) => e?.toJson())?.toList(),
      'commentCount': instance.commentCount,
      'comments': instance.comments?.map((e) => e?.toJson())?.toList(),
      'comments_likes': instance.commentsLikes?.map((e) => e?.toJson())?.toList(),
      'commentsLikesCount': instance.commentsLikesCount,
      'followCount': instance.followCount,
      'following': instance.following,
      'likeCount': instance.likeCount,
      'likesArePublic': instance.likesArePublic,
      'uploadCount': instance.uploadCount,
      'uploads': instance.uploads?.map((e) => e?.toJson())?.toList(),
      'user': instance.user?.toJson(),
      'subscribed': instance.subscribed,
      'tagCount': instance.tagCount,
    };
