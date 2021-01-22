// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileComment _$ProfileCommentFromJson(Map<String, dynamic> json) {
  return ProfileComment(
    id: json['id'] as int,
    up: json['up'] as int,
    down: json['down'] as int,
    content: json['content'] as String,
    created: json['created'] == null ? null : DateTime.parse(json['created'] as String),
    itemId: json['itemId'] as int,
    thumb: json['thumb'] as String,
  );
}

Map<String, dynamic> _$ProfileCommentToJson(ProfileComment instance) => <String, dynamic>{
      'id': instance.id,
      'up': instance.up,
      'down': instance.down,
      'content': instance.content,
      'created': instance.created?.toIso8601String(),
      'itemId': instance.itemId,
      'thumb': instance.thumb,
    };

ProfileCommentWrapper _$ProfileCommentWrapperFromJson(Map<String, dynamic> json) {
  return ProfileCommentWrapper(
    comments: (json['comments'] as List)?.map((e) => e == null ? null : ProfileComment.fromJson(e as Map<String, dynamic>))?.toList(),
    hasNewer: json['hasNewer'] as bool,
    hasOlder: json['hasOlder'] as bool,
    user: json['user'] == null ? null : SimpleUser.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProfileCommentWrapperToJson(ProfileCommentWrapper instance) => <String, dynamic>{
      'comments': instance.comments?.map((e) => e?.toJson())?.toList(),
      'hasOlder': instance.hasOlder,
      'hasNewer': instance.hasNewer,
      'user': instance.user?.toJson(),
    };
