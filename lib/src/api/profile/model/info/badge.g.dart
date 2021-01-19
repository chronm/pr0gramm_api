// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return Badge(
    link: json['link'] as String,
    image: json['image'] as String,
    description: json['description'] as String,
    created: const DateTimeConverter().fromJson(json['created'] as int),
  );
}

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'link': instance.link,
      'image': instance.image,
      'description': instance.description,
      'created': const DateTimeConverter().toJson(instance.created),
    };
