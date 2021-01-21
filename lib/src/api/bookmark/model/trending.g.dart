// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trending _$TrendingFromJson(Map<String, dynamic> json) {
  return Trending(
    link: json['link'] as String,
    name: json['name'] as String,
    search: json['search'] as String,
    velocity: (json['velocity'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$TrendingToJson(Trending instance) => <String, dynamic>{
      'link': instance.link,
      'name': instance.name,
      'search': instance.search,
      'velocity': instance.velocity,
    };
